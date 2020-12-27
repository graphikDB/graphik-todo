provider "graphik" {}

resource "graphik_constraint" "task_title_description" {
  lifecycle {
    prevent_destroy = true
  }
  name = "task_title_description"
  gtype = "task"
  expression = "has(this.attributes.title) && has(this.attributes.description)"
  target_docs = true
  target_connections = false
}
