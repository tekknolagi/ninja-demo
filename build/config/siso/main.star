load("@builtin//struct.star", "module")

def init(ctx):
  return module(
      "config", step_config = '{"rules": []}',
      filegroups={}, handlers={})
