acl = {
  enabled = true
  default_policy = "deny"
  enable_token_persistence = true
  tokens = {
    master = "master-token"
    agent  = "agent-token"
  }
}
