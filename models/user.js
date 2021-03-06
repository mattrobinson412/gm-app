"use strict";

const db = require("../db");
const bcrypt = require("bcrypt");
const { sqlForPartialUpdate } = require("../helpers/sql");
const {
  NotFoundError,
  BadRequestError,
  UnauthorizedError,
} = require("../expressError");

const { BCRYPT_WORK_FACTOR } = require("../config.js");

/** Related functions for User. */

class User {
  /** authenticate user with username, password.
   *
   * Returns { username, first_name, last_name, email, is_admin }
   *
   * Throws UnauthorizedError is user not found or wrong password.
   **/

  static async authenticate(username, password) {
    const res = await db.query(
      `SELECT username,
              password,
              first_name AS "firstName",
              last_name AS "lastName",
              email,
              is_admin AS "isAdmin"
        FROM "User"
        WHERE username = $1`,
        [username],
    );

    const user = res.rows[0];

    if (user) {
      const isValid = await bcrypt.compare(password, user.password);
      if (isValid === true) {
        delete user.password;
        return user;
      }
    }

    throw new UnauthorizedError("Invalid username/password")
  }

  
  /** Register user with data.
   *
   * Returns { username, firstName, lastName, email, isAdmin }
   *
   * Throws BadRequestError on duplicates.
   **/

  static async register(
    { username, password, firstName, lastName, email, isAdmin }) {
      const dupeCheck = await db.query(
        `SELECT username
         FROM "User"
         WHERE username = $1`,
         [username],
      );

      if (dupeCheck.rows[0]) {
        throw new BadRequestError(`Duplicate username ${username}`);
      }

      const hashedPassword = await bcrypt.hash(password, BCRYPT_WORK_FACTOR);

      const res = await db.query(
        `INSERT INTO "User"
          (username,
           password,
           first_name,
           last_name,
           email,
           is_admin)
          VALUES ($1, $2, $3, $4, $5, $6)
           RETURNING username,
           first_name AS "firstName",
           last_name AS "lastName",
           email, is_admin AS "isAdmin"`,
        [ username,
          hashedPassword,
          firstName,
          lastName,
          email,
          isAdmin ],
      );

      const user = res.rows[0];
      return user;
  }

   /** Get all User.
   *
   * Returns [{ username, first_name, last_name, email, is_admin }, ...]
   **/

  static async getAll() {
    const res = await db.query(
        `SELECT username,
                first_name AS "firstName",
                last_name AS "lastName",
                email,
                is_admin AS "isAdmin"
            FROM "User"
            ORDER BY username`,
    );

    return res.rows;
  }

  
  /** Given a username, return data about user.
   *
   * Returns { username, first_name, last_name, is_admin, jobs }
   *   where jobs is { id, title, company_handle, company_name, state }
   *
   * Throws NotFoundError if user not found.
   **/

  static async get(username) {
    const res = await db.query(
      `SELECT username,
              first_name AS "firstName",
              last_name AS "lastName",
              email,
              is_admin AS "isAdmin"
          FROM "User"
          WHERE username = $1`,
        [username],
    );

    const user = res.rows[0];
    return user;
  }
  

  /** Update user data with `data`.
   *
   * This is a "partial update" --- it's fine if data doesn't contain
   * all the fields; this only changes provided ones.
   *
   * Data can include:
   *   { firstName, lastName, password, email, isAdmin }
   *
   * Returns { username, firstName, lastName, email, isAdmin }
   *
   * Throws NotFoundError if not found.
   *
   * WARNING: this function can set a new password or make a user an admin.
   * Callers of this function must be certain they have validated inputs to this
   * or a serious security risks are opened.
   */

  static async update(username, data) {
    if (data.password) {
      data.password = await bcrypt.hash(data.password, BCRYPT_WORK_FACTOR);
    }

    const { setCols, values } = sqlForPartialUpdate(
      data,
      {
        firstName: "first_name",
        lastName: "last_name",
        isAdmin: "is_admin",
      });
    const usernameVarIdx = "$" + (values.length + 1);

    const querySql = `UPDATE "User"
                      SET ${setCols}
                      WHERE username = ${usernameVarIdx}
                      RETURNING username,
                      first_name AS "firstName",
                      last_name AS "lastName",
                      email,
                      is_admin AS "isAdmin"`;
    const res = await db.query(querySql, [...values, username]);
    const user = res.rows[0];

    if (!user) throw new NotFoundError(`No user ${username}`);
      
    delete user.password;
    return user;
  }


  /** Delete given user from database; returns undefined. */

  static async remove(username) {
    let res = await db.query(
      `DELETE
       FROM "User"
       WHERE username = $1
       RETURNING username`,
      [username],
    );
    const user = res.rows[0];

    if (!user) throw new NotFoundError(`No user: ${username}`);
  }
}

module.exports = User;