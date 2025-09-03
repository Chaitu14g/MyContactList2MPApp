# 2GP Managed Package: Contact List Viewer

This project is a complete demonstration of the end-to-end development lifecycle of a Second-Generation (2GP) Managed Package on the Salesforce platform. It features a simple Lightning Web Component that securely queries and displays a list of recent Contact records.

## Key Features & Skills Demonstrated

* **Salesforce Development:**
    * **Apex:** A secure Apex controller (`ContactController`) to query data using `WITH SECURITY_ENFORCED`.
    * **Lightning Web Components (LWC):** A responsive LWC (`contactListMPA`) that calls the Apex controller.
* **Salesforce DevOps:**
    * **Source-Driven Development:** The entire project is managed in a Git repository.
    * **Salesforce DX (SFDX):** Developed locally in VS Code and tested in temporary **Scratch Orgs**.
    * **2GP Managed Packaging:** The application is bundled into a namespaced 2GP Managed Package, demonstrating the process for creating distributable applications.
* **Automation:**
    * Includes metadata for a **Custom Tab: Testing Managed Package** and a **Lightning App Page**, which automates the UI setup upon deployment.

---
## Installation and Testing

You can test this project in two ways: by installing the pre-built package or by deploying the source code.

### **Option 1: Install as a Managed Package (Quickest)**

This method simulates how an end-user would install the app.

1.  **Authorize your org:** Make sure you have authorized the Salesforce org you want to install into.
2.  **Run the install command:** In your terminal, run the following command, replacing the placeholders with the actual values.

    ```bash
    sf package install --package <PACKAGE_VERSION_ID> --target-org <YOUR_ORG_ALIAS> --installation-key <INSTALLATION_KEY>
    ```
    * `<PACKAGE_VERSION_ID>`: The `04t...` ID generated when the package version was created.
    * `<YOUR_ORG_ALIAS>`: The alias of the org where you want to install the package.
    * `<INSTALLATION_KEY>`: The password set during package version creation.

### **Option 2: Deploy from Source Code (For Developers)**

This method is for developers who want to inspect or modify the code.

1.  **Clone the Repository:**
    ```bash
    git clone <Your-Repository-URL>
    cd <repository-folder-name>
    ```

2.  **Create a Scratch Org:**
    ```bash
    sf org create scratch --alias TestApp --duration-days 7 -f config/project-scratch-def.json
    ```

3.  **Deploy the Metadata:**
    ```bash
    sf project deploy start --target-org TestApp
    ```

4.  **Load Data and View:**
    * Use a tool like Salesforce Data Loader to import sample `Contact` records.
    * Open the org (`sf org open --target-org TestApp`) and find the **"Testing Package"** tab.



----


# Salesforce DX Project: Next Steps

Now that you’ve created a Salesforce DX project, what’s next? Here are some documentation resources to get you started.

## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
