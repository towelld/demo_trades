connection: "ctc1611demo"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: records {
  persist_for: "5 minutes"
}
