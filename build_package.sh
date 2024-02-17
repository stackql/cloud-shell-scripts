#!/bin/sh

# Define directory variables
BIN_DIR="bin"
SCRIPTS_DIR="scripts"
PACKAGE_DIR="package"
TEMP_DIR="temp-package"

# Step 1: Clear the package directory
echo "Clearing the package directory..."
rm -rf ${PACKAGE_DIR}/*
echo "Package directory cleared."

# Step 2: Prepare the binary and scripts
echo "Preparing StackQL binary and scripts..."
mkdir -p ${TEMP_DIR}
unzip ${BIN_DIR}/stackql_linux_amd64.zip -d ${TEMP_DIR}
chmod +x ${TEMP_DIR}/stackql

# Step 3: Copy scripts to temp-package
cp ${SCRIPTS_DIR}/* ${TEMP_DIR}/
echo "StackQL binary and scripts prepared."

# Step 4: Create the final zip package
echo "Creating the final zip package..."
cd ${TEMP_DIR}
zip -r stackql_linux_amd64.zip ./*
mv stackql_linux_amd64.zip ../${PACKAGE_DIR}/
cd ..
echo "Final zip package created at ${PACKAGE_DIR}/stackql_linux_amd64.zip."

# Step 5: Clean up
echo "Cleaning up temporary files..."
rm -rf ${TEMP_DIR}
echo "Cleanup complete."

echo "Package build process completed successfully."
