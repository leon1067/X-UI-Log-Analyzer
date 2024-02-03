# X-UI-Log-Analyzer-Traffic-Monitor-
Certainly! Here's a refined version of the description:

---

**X-UI Log Analyzer for Traffic Monitoring**

X-UI Log Analyzer is a powerful tool designed for real-time monitoring of user traffic on the X-UI server. This script aims to provide timely insights into IP addresses, domains, and other relevant information, allowing administrators to monitor and analyze incoming and outgoing traffic with a suitable delay.

**Key Features:**
- **Real-time Analysis:** The script continuously monitors the server's access log, processing the latest entries to detect incoming and outgoing traffic in real-time.
- **IP Address Insights:** Gain valuable insights into the IP addresses accessing the server, allowing for effective traffic monitoring.
- **Domain Recognition:** Identify and analyze the domains associated with incoming and outgoing traffic, providing a comprehensive view of server interactions.
- **Color-Coded Output:** The script utilizes color codes for enhanced readability, highlighting Gmail domains in green, IP addresses in blue, and other domains in yellow.
- **Automatic Log Cleanup:** To maintain efficiency, the script automatically cleans up the access.log file at regular intervals.

**Ethical Usage Disclaimer:**
This script is intended for ethical and responsible use in monitoring server traffic for analysis and troubleshooting purposes. It is essential to use this tool in compliance with ethical standards and legal regulations. The script's author disclaims any responsibility for misuse or unethical practices. Users are encouraged to adhere to ethical guidelines and legal frameworks when deploying this script.

**Note:**
Administrators should exercise caution and responsibility, ensuring that the script is used for legitimate and ethical monitoring purposes. Any misuse or unethical actions using this script are the sole responsibility of the user.

--- 

Feel free to adjust the wording as needed!

1. Access the xray panel and navigate to the xray template section.

2. Locate the `log` section in the template, which looks like the following:

2-1.Remove the parameter:
```json
{
  "log": {
    "loglevel": "warning",
    "error": "./error.log"
 ```
2-2.Replace the parameter:


     ```
     {
  "log": {
    "loglevel": "warning",
    "access": "/usr/local/x-ui/access.log",
    "error": "/usr/local/x-ui/error.log"
    ```

3. Ensure the path specified for `access.log` is correct and that the file is being created at that location.

4. To retain logs and prevent access.log from being deleted, consider changing the `loglevel` from `warning` to a higher level such as `info` or `debug`.

5. If the issue persists, check the system for the relevant log files and confirm that xray has the necessary permissions to write log files.

If you encounter any further issues or need more details, please provide additional information.
Now, the error section has been removed from the template. In the specified directory (/usr/local/x-ui/), a file named access.log will be created to store the data.
"Alright, now let's move on to step two, which is live monitoring of traffic logs for each user. 
---

### Pre-requisites for the Script Execution:

1. **Bash Shell**: Ensure that your system has Bash installed. You can check this by running the command `bash --version` in your terminal. If Bash is not installed, you can install it using your system's package manager.

2. **Tail Command**: The script uses the `tail` command to read the last lines of the access.log file. Ensure that the `tail` command is available in your system. You can install it using your system's package manager if it's not already installed.

3. **Host Command**: The script utilizes the `host` command to resolve IP addresses to domain names. Make sure that the `host` command is installed on your system. You can install it using your system's package manager if it's not already installed.

4. **Whois Command**: The script uses the `whois` command to retrieve domain information. Verify that the `whois` command is installed on your system. If it's not installed, you can install it using your system's package manager.

### How to Execute the Script:

1. **Download the Script**: Download the script file to your local system.

2. **Set Execution Permissions**: Make the script executable by running the command `chmod +x script_name.sh` in the terminal, replacing `script_name.sh` with the actual name of your script file.

3. **Execute the Script**: Run the script by executing `./script_name.sh` in the terminal, replacing `script_name.sh` with the actual name of your script file.

### Additional Notes:

- This script continuously monitors the access.log file and processes the last 3 lines to extract IP addresses and retrieve domain information.

- It utilizes color codes to highlight different types of output: green for Gmail domains, blue for IP addresses, and yellow for other domains.

- The script automatically cleans up the access.log file every 3 seconds

---

### Pre-requisites for the Script Execution:

1. **Bash Shell**: Make sure that your system has Bash installed. You can verify this by running the command `bash --version` in your terminal. If Bash is not installed, you can install it using your system's package manager:

    ```bash
    sudo apt-get update
    sudo apt-get install bash
    ```

2. **Tail Command**: The script uses the `tail` command to read the last lines of the access.log file. Ensure that the `tail` command is available on your system. If it's not installed, you can install it using:

    ```bash
    sudo apt-get install coreutils
    ```

3. **Host Command**: The script utilizes the `host` command to resolve IP addresses to domain names. Confirm that the `host` command is installed on your system:

    ```bash
    sudo apt-get install dnsutils
    ```

4. **Whois Command**: The script uses the `whois` command to retrieve domain information. Verify the presence of the `whois` command on your system:

    ```bash
    sudo apt-get install whois
    ```

### How to Execute the Script:

1. **Download the Script**: Download the script file to your local system.

2. **Set Execution Permissions**: Make the script executable by running the command `chmod +x script_name.sh` in the terminal, replacing `script_name.sh` with the actual name of your script file.

3. **Execute the Script**: Run the script by executing `./script_name.sh` in the terminal, replacing `script_name.sh` with the actual name of your script file.
Certainly! Here are the instructions in English:

### 1. Download the Script:

Download the script from your GitHub repository. You can use either `wget` or `curl`:
cd /usr/local/x-ui/

```bash

sudo wget https://raw.githubusercontent.com/leon1067/X-UI-Log-Analyzer/main/log.sh -P /usr/local/x-ui/



```

### 2. Move the Script to the Correct Path:

Ensure that the script is located in `/usr/local/x-ui/` using the following command:


### 3. Set Execution Permissions:

Make the script executable by running the following command:

```bash
sudo chmod +x /usr/local/x-ui/log.sh

```

### 4. Run the Script:

Now you can execute the script:

```bash
sudo /usr/local/x-ui/log.sh
```

### 5. Add to Startup (Optional):

If you want the script to run automatically on system startup, you need to add it to system settings. Depending on your system, this can be done by adding the command to the `.bashrc` or `rc.local` file. The steps may vary based on your distribution.

With these steps, your script is installed next to `access.log` in `/usr/local/x-ui/` and can be executed using the provided commands.
### Additional Notes:

- This script continuously monitors the access.log file and processes the last 3 lines to extract IP addresses and retrieve domain information.

- It utilizes color codes to highlight different types of output: green for Gmail domains, blue for IP addresses, and yellow for other domains.

- The script automatically cleans up the access.log file every 3 seconds.

---
