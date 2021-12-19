---
title: "Ansible Role: serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X"
description: "X_ROLE_SHORT_DESCRIPTION_X"
authors:
  - SerDigital64
tags:
  - ansible
  - devops
  - linux
  - automation
---

# Ansible Role: serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X

## Purpose

X_ROLE_SHORT_DESCRIPTION_X

Supported features in the current version:

- Prepare environment for application deployment.
- Deploy application. Packages are defined in the variable `X_ROLE_NAME_X_profiles`.
- Control application subsystem services. Services are defined in the variable `X_ROLE_NAME_X_subsystems`.
- Configure application.
- Configure application subsystem server.
- Provision application components.

The **X_ROLE_NAME_X** Ansible-Role is part of the [A:Platform64](https://aplatform64.readthedocs.io) project and is available in the [X_COLLECTION_NAME_X](../collections/X_COLLECTION_NAME_X.md) Ansible-Collection.

## Use Cases

### Install application X_TASK_ROLE_NAME_X

```yaml
- name: "Example: Install X_TASK_ROLE_NAME_X"
  vars:
    X_ROLE_NAME_X:
      resolve_prereq: true
      prepare: true
      deploy: true
  ansible.builtin.include_role:
    name: "serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X"
```

### Configure application X_TASK_ROLE_NAME_X

```yaml
- name: "Example: Configure X_TASK_ROLE_NAME_X"
  vars:
    X_ROLE_NAME_X:
      setup: true
  ansible.builtin.include_role:
    name: "serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X"
```

### Control application X_TASK_ROLE_NAME_X subsystem services

```yaml
- name: "Example: Enable and activate X_TASK_ROLE_NAME_X subsystem service"
  vars:
    X_ROLE_NAME_X:
      control: true
    X_ROLE_NAME_X_subsystem:
      enabled: true
      status: "started"
  ansible.builtin.include_role:
    name: "serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X"
```

### Provision application X_TASK_ROLE_NAME_X components

```yaml
- name: "Example: Provision X_TASK_ROLE_NAME_X components"
  vars:
    X_ROLE_NAME_X:
      provision: true
  ansible.builtin.include_role:
    name: "serdigital64.X_COLLECTION_NAME_X.X_ROLE_NAME_X"
```

## Role Parameters

### Actions

- Use **action-parameters** to control what tasks are enabled for the role to execute.
- Parameters should be declared as task level vars as they are intented to be dynamic.

```yaml
X_ROLE_NAME_X:
  resolve_prereq:
  prepare:
  deploy:
  setup:
  control:
  provision:
```

| Parameter                    | Required? | Type    | Default | Purpose / Value                               |
| ---------------------------- | --------- | ------- | ------- | --------------------------------------------- |
| X_ROLE_NAME_X.resolve_prereq | no        | boolean | `false` | Enable automatic resolution of prequisites    |
| X_ROLE_NAME_X.prepare        | no        | boolean | `false` | Enable environment preparation                |
| X_ROLE_NAME_X.deploy         | no        | boolean | `false` | Enable installation of application packages   |
| X_ROLE_NAME_X.setup          | no        | boolean | `false` | Enable application configuration              |
| X_ROLE_NAME_X.control        | no        | boolean | `false` | Enable application subsystem service control  |
| X_ROLE_NAME_X.provision      | no        | boolean | `false` | Enable provisioning of application components |

### End State

- Use **end-state** parameters to define the target state after role execution.
- Parameters should be declared in **host_vars** or **group_vars** as they are intended to be permanent.

```yaml
X_ROLE_NAME_X_application:
  name:
  type:
  version:
  installed:
X_ROLE_NAME_X_subsystem:
  enabled:
  status:
X_ROLE_NAME_X_server_options:
  X_DEFAULT_SERVER_OPTION_X:
X_ROLE_NAME_X_paths:
  X_DEFAULT_PATH_X:
X_ROLE_NAME_X_users:
  X_DEFAULT_USER_X:
    name:
    group:
    home:
```

| Parameter                                              | Required?    | Type       | Default                             | Purpose / Value                     |
| ------------------------------------------------------ | ------------ | ---------- | ----------------------------------- | ----------------------------------- |
| X_ROLE_NAME_X_application                              | yes(deploy)  | dictionary |                                     | Set application package end state   |
| X_ROLE_NAME_X_application.name                         | yes(deploy)  | string     | `"X_APP_ID_X"`                      | Select application package name     |
| X_ROLE_NAME_X_application.type                         | yes(deploy)  | string     | `"X_APP_TYPE_X"`                    | Select application package type     |
| X_ROLE_NAME_X_application.version                      | yes(deploy)  | string     | `"X_APP_VERSION_X"`                 | Select application package version  |
| X_ROLE_NAME_X_application.installed                    | yes(deploy)  | boolean    | `true`                              | Set application package end state   |
| X_ROLE_NAME_X_subsystem                                | yes(control) | dictionary |                                     | Set application subsystem end state |
| X_ROLE_NAME_X_subsystem.enabled                        | yes(control) | boolean    | `false`                             | Enable the subsystem?               |
| X_ROLE_NAME_X_subsystem.status                         | yes(control) | string     | `"stopped"`                         | Set the service state               |
| X_ROLE_NAME_X_server_options                           | yes(control) | dictionary |                                     | Set subsystem server options        |
| X_ROLE_NAME_X_server_options.X_DEFAULT_SERVER_OPTION_X | yes(control) | string     | `"X_DEFAULT_SERVER_OPTION_VALUE_X"` |                                     |
| X_ROLE_NAME_X_paths                                    | yes(prepare) | dictionary |                                     | Set paths                           |
| X_ROLE_NAME_X_paths.X_DEFAULT_PATH_X                   | yes(prepare) | string     | `"X_DEFAULT_PATH_VALUE_X"`          |                                     |
| X_ROLE_NAME_X_users                                    | yes(prepare) | dictionary |                                     | Define users                        |
| X_ROLE_NAME_X_users.X_DEFAULT_USER_X                   | yes(prepare) | dictionary |                                     | Define directory structure owner    |
| X_ROLE_NAME_X_users.X_DEFAULT_USER_X.name              | yes(prepare) | string     | `"X_DEFAULT_USER_NAME_X"`           | Set login name                      |
| X_ROLE_NAME_X_users.X_DEFAULT_USER_X.group             | yes(prepare) | string     | `"X_DEFAULT_USER_GROUP_X"`          | Set group name                      |
| X_ROLE_NAME_X_users.X_DEFAULT_USER_X.home              | yes(prepare) | string     | `"X_DEFAULT_USER_HOME_X"`           | Set home directory                  |

## Deployment

### OS Compatibility

- CentOS8
- OracleLinux8
- Ubuntu20
- Ubuntu21
- Fedora33
- Debian10
- Debian11

### Dependencies

- Ansible Collections:
  - serdigital64.core

### Prerequisites

All the prerequisites listed in this section can be automatically resolved by enabling the role action `resolve_prereq: true`

- Package managers for the target application are installed and enabled.
- **A:Platform64** package installer (core_package) runtime environment is ready.

### Installation Procedure

The role can be deployed by installing the Ansible-Collection from the Ansible Galaxy repository: [https://galaxy.ansible.com/serdigital64/X_COLLECTION_NAME_X](https://galaxy.ansible.com/serdigital64/X_COLLECTION_NAME_X)

```shell
# Install Ansible dependencies
ansible-galaxy collection install serdigital64.core
# Install the collection
ansible-galaxy collection install serdigital64.X_COLLECTION_NAME_X
```

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

Please see the [guidelines](../contributing/guidelines.md) for further details.

## Author

- [SerDigital64](https://serdigital64.github.io/)

## License

[GPL-3.0-or-later](https://www.gnu.org/licenses/gpl-3.0.txt)