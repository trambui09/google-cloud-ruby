# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""This script is used to synthesize generated parts of this library."""

import synthtool as s
import synthtool.gcp as gcp
import synthtool.languages.ruby as ruby
import logging

logging.basicConfig(level=logging.DEBUG)

gapic = gcp.GAPICMicrogenerator()
library = gapic.ruby_library(
    "notebooks", "v1beta1",
    generator_args={
        "ruby-cloud-gem-name": "google-cloud-notebooks",
        "ruby-cloud-title": "AI Platform Notebooks",
        "ruby-cloud-description": "AI Platform Notebooks makes it easy to manage JupyterLab instances through a protected, publicly available notebook instance URL. A JupyterLab instance is a Deep Learning virtual machine instance with the latest machine learning and data science libraries pre-installed.",
        "ruby-cloud-env-prefix": "NOTEBOOKS",
        "ruby-cloud-wrapper-of": "v1beta1:0.0",
        "ruby-cloud-product-url": "https://cloud.google.com/ai-platform-notebooks",
        "ruby-cloud-api-id": "notebooks.googleapis.com",
        "ruby-cloud-api-shortname": "notebooks",
    }
)

s.copy(library, merge=ruby.global_merge)
