# Overtime App

## Key requirement: company needs documentation that salaried employees did not get overtime each week

## Model
- Post -> date:date rationale:text
- User -> Devise
- AdminUser -> STI

## Features:
- Approval Workflow
- SMS Sending -> link to approval or overtime input
- Administrate admin dashboard
- Block non admin and guest users
- Email summary to managers for approval
- Needs to be documented if employee did not log overtime

## UI:
Bootstrap -> formatting

## To Dos:
- Add full_name method for users
- refactor post_form for admin user with status
x Refactor post association spec



