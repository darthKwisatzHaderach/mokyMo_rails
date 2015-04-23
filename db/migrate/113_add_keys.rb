class AddKeys < ActiveRecord::Migration
  def change
    add_foreign_key "case_steps", "cases", name: "case_steps_case_id_fk"
    add_foreign_key "cases", "suites", name: "cases_suite_id_fk"
    add_foreign_key "check_lists", "suites", name: "check_lists_suite_id_fk"
    add_foreign_key "components", "projects", name: "components_project_id_fk"
    add_foreign_key "executions", "execution_types", name: "executions_execution_types_id_fk", column: "execution_types_id"
    add_foreign_key "executions", "test_objects", name: "executions_test_object_id_fk"
    add_foreign_key "results", "check_lists", name: "results_check_list_id_fk"
    add_foreign_key "results", "executions", name: "results_execution_id_fk"
    add_foreign_key "suites", "components", name: "suites_component_id_fk"
    add_foreign_key "test_objects", "projects", name: "test_objects_project_id_fk"
  end
end
