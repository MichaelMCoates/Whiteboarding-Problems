SQL + ActiveRecord
# 03B

Write the following queries in SQL and in Rails:

count all users
count all active users
clarify its up to them what 'active' means
count all users who visited the site within a certain time period


SELECT
  COUNT(*)
FROM
  users;

User.count


SELECT
  COUNT(*)
FROM
  users
WHERE
  users.active = true;

User.where(:active => "TRUE").count


SELECT
  COUNT(*)
FROM
  users
WHERE
  users.last_login BETWEEN :time_period_start AND :time_period_end ;

User.where(last_login: (time_period_start..time_period_end)).count


User.where(last_visited_time => (time_start..time_end)).count


# Need to get syntax down for ActiveRecord
# Lighten up on clarification
# Slow down on clarification asking
# Ask interviewer that I like to explain things thoroughly and to let me know if overexplaining
# Refresh activerecord!!!!
# Where returns an activerecord relation object
