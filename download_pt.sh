#Requires install gcloud CLI for downloading videos from GCP bucket: https://cloud.google.com/sdk/docs/install-sdk#deb
 
# Create the target directory if it doesn't exist
mkdir -p sevila_data/videos

# Function to check if gcloud is installed
is_gcloud_installed() {
    type gcloud >/dev/null 2>&1
}

# Function to download and unzip files
download_and_unzip() {
    local zip_file=$1
    local url=$2

    # Use gcloud if it's installed, otherwise use wget
    if is_gcloud_installed; then
        gcloud storage cp "gs://dm-perception-test/zip_data/${zip_file}" .
    else
        wget "${url}/${zip_file}"
    fi

    # Unzip and clean up
    unzip -n "${zip_file}" -d sevila_data/
    rm "${zip_file}"
}

# Define the base URL for the zip files
BASE_URL="https://storage.googleapis.com/dm-perception-test/zip_data"

# Download and unzip train_videos.zip
download_and_unzip "train_videos.zip" "$BASE_URL"

# Download and unzip valid_videos.zip
download_and_unzip "valid_videos.zip" "$BASE_URL"

cd ../

