# WHAT
* This script is used to migrate TF states.

# WHY
* To share knowledge on how to safely migrate TF states from legacy TFE environments to TFE workspaces.

# HOW

## Prerequisites
* ATLAS_TOKEN (see TFE Organization Page)
* Directory structure matching TFE workspaces and TFE Legacy environments

```
/
  - migration.sh
  - envs/
    - <TFE environment name (matching on both sides)>
      - main.tf (make sure to include your `organization/environment` here)
```

* This script is only responsible for migrating the *_state_* of your legacy TF environments. You'll have to create the corresponding workspaces in TFE and delete the legacy TFE environments yourself.

# WHO
@rmzi
