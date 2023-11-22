#!/bin/bash

# Check if the script is executed with the correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <block_name>"
    exit 1
fi

# Set the block name from the command line argument
block_name=$1

# Set the Moodle directory
moodle_dir="."

# Set the plugin directory
plugin_dir="${moodle_dir}/block_${block_name}"

# Create the plugin directory and necessary files
mkdir -p "${plugin_dir}" && cd "${plugin_dir}" || exit 1
touch version.php
touch block_${block_name}.php
mkdir -p lang/en
touch lang/en/block_${block_name}.php

# Populate version.php
cat <<EOL > version.php
<?php
defined('MOODLE_INTERNAL') || die();

\$plugin->version   = 2023112200;      // The current module version (Date: YYYYMMDDXX)
\$plugin->requires  = 2019111200;      // Requires this Moodle version
\$plugin->component = 'block_${block_name}'; // Full name of the plugin (used for diagnostics)
EOL

# Populate block_${block_name}.php
cat <<EOL > block_${block_name}.php
<?php

class block_${block_name} extends block_base {
    public function init() {
        \$this->title = get_string('pluginname', 'block_${block_name}');
    }

    public function get_content() {
        if (\$this->content !== null) {
            return \$this->content;
        }

        \$this->content = new stdClass();
        \$this->content->text = 'The content of your block goes here.';
        \$this->content->footer = 'Footer text here';

        return \$this->content;
    }
}
EOL

# Populate lang/en/block_${block_name}.php
cat <<EOL > lang/en/block_${block_name}.php
<?php

\$string['pluginname'] = '${block_name} block';
EOL

# Display success message
echo "Moodle block plugin structure and files generated successfully for ${block_name}."
