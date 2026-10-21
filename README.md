<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:1E293B,50:0D9488,100:5EEAD4&height=190&section=header&text=Terraform+Module+and+Environment+Practice&fontSize=34&fontColor=ffffff&animation=fadeIn" alt="Terraform module structure banner" width="100%" />

<img src="https://readme-typing-svg.demolab.com/?font=Fira+Code&weight=600&size=17&pause=1200&color=00C7FF&center=true&vCenter=true&width=900&height=40&lines=Reusable+Modules+%E2%80%A2+Variables+%E2%80%A2+Environment+Separation" alt="Animated project tagline" />

[![Terraform](https://img.shields.io/badge/Terraform-IaC-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://developer.hashicorp.com/terraform)
[![Azure](https://img.shields.io/badge/Microsoft-Azure-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com/)
[![Portfolio](https://img.shields.io/badge/Portfolio-MD%20Amirul-181717?style=for-the-badge&logo=github)](https://github.com/haqueamir70-coder)

</div>

> **Portfolio project:** implementation status and limitations are documented below. The diagram describes the intended workflow/architecture and is not proof of a successful production deployment.

## 🗺️ Architecture at a Glance

```mermaid
flowchart LR
  A[Environment Root] --> B[Reusable Child Module]
  B --> C[Azure Resources]
  A --> D[Environment Variables]
  C --> E[Outputs]
```

---

# Terraform Module and Environment Practice

A small Terraform practice repository for exploring child modules and environment-specific configuration.

## Current layout

- `child/` — child-module directory
- `envirnment/` — environment configuration directory (the directory name is preserved as it exists in the repository)

Review the files in these directories to identify the exact resources and module inputs currently configured.

## Suggested workflow

From the relevant Terraform root module:

```bash
terraform fmt -check -recursive
terraform init
terraform validate
terraform plan
```

Review the plan before applying anything to an Azure subscription. Use a test environment first.

## Good next improvements

- Rename misspelled paths only after updating every reference and documenting the change.
- Add a root README with architecture, prerequisites, and example commands.
- Add explicit module inputs and outputs, variable validation, and examples.
- Add a `.gitignore` that excludes local state, variable files, and generated Terraform directories.
- Add CI checks for formatting and validation.

Never commit credentials, state files, or sensitive `terraform.tfvars` values.

## Author

MD Amirul Haque · [GitHub profile](https://github.com/haqueamir70-coder) · [LinkedIn](https://www.linkedin.com/in/md-amirul-haque/)
