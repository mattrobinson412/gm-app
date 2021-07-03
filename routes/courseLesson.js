"use strict";

/** Routes for course lessons. */

const jsonschema = require("jsonschema");

const express = require("express");
const { BadRequestError } = require("../expressError");
const { ensureAdmin, ensureLoggedIn } = require("../middleware/auth");
const CourseLesson = require("../models/courselesson");
const courseLessonNewSchema = require("../schemas/courseLessonNewSchema.json");
const courseLessonUpdateSchema = require("../schemas/courseLessonUpdate.json");

const router = express.Router({ mergeParams: true });


/** POST / { courselesson } => { courselesson }
 *
 * courselesson should be { userId, courseId, lessonId, isCompleted }
 *
 * Returns { id, userId, courseId, lessonId, isCompleted }
 *
 * Authorization required: login
 */

router.post("/", ensureLoggedIn, async function (req, res, next) {
    try {
        const validator = jsonschema.validate(req.body, courseLessonNewSchema);
        if (!validator.valid) {
            const errs = validator.errors.map(e => e.stack);
            throw new BadRequestError(errs);
        }

        const cl = await CourseLesson.create(req.body);
        return res.status(201).json({ cl });

    } catch (err) {
        return next(err);
    }
});

/** GET all completed course lessons for a user.
 * 
 * returns all:
 *  { id, userId, courseId, lessonId, isCompleted }, ...
 * 
 * auth req: login
 */

router.get("/", ensureLoggedIn, async function (req, res, next) {
    try {
        const cls = await CourseLesson.getAllComplete(req.body);
        return res.status(200).json({ cls });

    } catch (err) {
        return next(err);
    }
});

/** PATCH a course lesson as complete or incomplete.
 * 
 * returns:
 *  { id, userId, courseId, lessonId, isCompleted }
 * 
 * auth req: login
 */

router.patch("/", ensureLoggedIn, async function (req, res, next) {
    try {
        const validator = jsonschema.validate(req.body, courseLessonUpdateSchema);
        if (!validator.valid) {
            const errs = validator.errors.map(e => e.stack);
            throw new BadRequestError(errs);
        }

        const cl = await CourseLesson.markComplete(req.body);
        return res.status(201).json({ cl });

    } catch (err) {
        return next(err);
    }
})
