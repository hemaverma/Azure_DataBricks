#!/bin/bash

# Change to the root directory of the project
cd "$(dirname "$0")/.." || exit

# Set the directory where YAML files will be generated
OUTPUT_DIR="resources/"
mkdir -p "$OUTPUT_DIR"

# Find all _test.py files from the root directory and iterate over them
for test_file in $(find ./tests -type f -name "*_test.py"); do
  # Extract the base filename without extension
  base_name=$(basename "$test_file" .py)

  # Define the path to the output YAML file
  output_file="${OUTPUT_DIR}/${base_name}.job.yml"

  # Generate the YAML content
  cat <<EOF > "$output_file"
resources:
  jobs:
    ${base_name}:
      name: ${base_name}
      tasks:
        - task_key: ${base_name}
          notebook_task:
            notebook_path: tests/${base_name}
            base_parameters:
              env: \${bundle.target}
            source: GIT

      git_source:
        git_url: https://github.com/DilmurodMak/Azure_DataBricks/
        git_provider: gitHub
        git_branch: main
      queue:
        enabled: true

      job_clusters:
        - job_cluster_key: job_cluster
          new_cluster:
            spark_version: 15.4.x-scala2.12
            node_type_id: Standard_D4ds_v5
            autoscale:
                min_workers: 1
                max_workers: 4
EOF

  echo "Generated YAML job template for: $base_name -> $output_file"
done