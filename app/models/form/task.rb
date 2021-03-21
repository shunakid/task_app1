class Form::Task < Task
  REGISTRABLE_ATTRIBUTES = %i(
    name
    start_date(1i) start_date(2i) start_date(3i) start_date(4i) start_date(5i)
    finish_date(1i) finish_date(2i) finish_date(3i) finish_date(4i) finish_date(5i)
  )
end