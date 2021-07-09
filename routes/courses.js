"use strict";

/** Routes for courses. */

const jsonschema = require("jsonschema");

const express = require("express");
const { ensureCorrectUserOrAdmin, ensureAdmin, ensureLoggedIn } = require("../middleware/auth");
const { BadRequestError } = require("../expressError");
const Course = require("../models/courses");
const { createToken } = require("../helpers/tokens");
const courseNewSchema = require("../schemas/courseNew.json");
const courseUpdateSchema = require("../schemas/courseUpdate.json");

const router = express.Router();


/** POST / { course } => { course }
 * Adds a new course.
 * 
 * Returns new course:
 *  { id, name, level }
 * 
 * auth req: admin
 */

router.post("/", ensureAdmin, async function (req, res, next) {
    try {
        const validator = jsonschema.validate(req.body, courseNewSchema);
        if (!validator.valid) {
            const errs = validator.errors.map(e => e.stack);
            throw new BadRequestError(errs);
        }

        const course = await Course.create(req.body);
        return res.status(201).json({ course });
        
    } catch (err) {
        return next(err);
    }
});


/** GET / { courses }
 * 
 * Gets all courses.
 * 
 * Returns every course:
 *  { id, name, level }, ...
 * 
 * auth req: login
 */

router.get("/", ensureLoggedIn, async function (req, res, next) {
    try {
        const courses = await Course.getAll();
        return res.status(200).json({ courses });

    } catch (err) {
        return next(err);
    }
});

/** GET /[name] => { course }
 * 
 * Gets a specific course.
 * 
 * Returns a course:
 *  { id, name, level }
 * 
 * auth req: login
 */

router.get("/:name", ensureLoggedIn, async function (req, res, next) {
    try {
        const course = await Course.getCourse(req.params.name);
        return res.status(200).json({ course });

    } catch (err) {
        return next(err);
    }
})
