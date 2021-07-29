"use strict";

/** Routes for lessons. */

const jsonschema = require("jsonschema");

const express = require("express");
const { ensureCorrectUserOrAdmin, ensureAdmin, ensureLoggedIn } = require("../middleware/auth");
const { BadRequestError } = require("../expressError");
const Lesson = require("../models/lesson");
const { createToken } = require("../helpers/tokens");
const lessonNewSchema = require("../schemas/lessonNew.json");
const lessonUpdateSchema = require("../schemas/lessonUpdate.json");

const router = express.Router();


/** POST / { lesson } => { lesson }
 * Adds a new lesson.
 * 
 * Returns new lesson:
 *  { id, courseId, name, number, sheet, sound }
 * 
 * auth req: admin
 */

router.post("/", ensureAdmin, async function (req, res, next) {
    try {
        const validator = jsonschema.validate(req.body, lessonNewSchema);
        if (!validator.valid) {
            const errs = validators.errors.map(e => e.stack);
            throw new BadRequestError(errs);
        }

        const lesson = await Lesson.create(req.body);
        return res.status(201).json({ lesson });

    } catch (err) {
        return next(err);
    }
});

/** GET / all lessons for a course
 * 
 * Returns all lessons:
 * { id, courseId, name, number, sheet, sound }, ...
 * 
 * auth req: user
 */

router.get("/:courseId", ensureLoggedIn, async function (req, res, next) {
    try {
        const lessons = await Lesson.getAll(req.params.courseId);
        return res.status(200).json({ lessons });

    } catch (err) {
        return next(err);
    }
});

/** GET /[courseId]/[number] => { lesson }
 * 
 * Returns a lesson from a specfic course:
 * { id, courseId, name, number, sheet, sound }
 * 
 * auth req: user
 */

 router.get("/:courseId/:number", ensureLoggedIn, async function (req, res, next) {
    try {
        const lesson = await Lesson.getLesson(req.params.courseId, req.params.number);
        return res.status(200).json({ lesson });

    } catch (err) {
        return next(err);
    }
});


/** PATCH / a lesson
 * 
 * Returns a patched lesson:
 *  { id, courseId, name, number, sheet, sound }
 * 
 * auth req: admin
 */

router.patch("/:courseId/:number", ensureAdmin, async function (req, res, next) {
    try {
        const validator = jsonschema.validate(req.body, lessonUpdateSchema);

        if (!validator.valid) {
            const errs = validators.errors.map(e => e.stack);
            throw new BadRequestError(errs);
        }

        const lesson = await Lesson.update(req.params.courseId, req.params.number, data);
        return res.status(201).json({ lesson });

    } catch (err) {
        return next(err);
    }
});

module.exports = router;