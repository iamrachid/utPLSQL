create or replace type ut_assertion_timestamp under ut_assertion
(
  overriding member procedure to_equal(self in ut_assertion_timestamp, a_expected timestamp_unconstrained, a_nulls_are_equal boolean := null)
)
/