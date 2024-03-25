variable "DOCKERHUB_REPO" {
  default = "timpietruskyblibla"
}

variable "DOCKERHUB_IMG" {
  default = "runpod-worker-comfy"
}

variable "RELEASE_VERSION" {
  default = "latest"
}

variable "HUGGINGFACE_ACCESS_TOKEN" {
  default = ""
}

group "default" {
  targets = ["base", "sdxl", "sd3", "flux1-schnell", "flux1-dev"]
}

target "base" {
  context = "."
  dockerfile = "Dockerfile"
  target = "base"
  platforms = ["linux/amd64"]
  tags = ["${DOCKERHUB_REPO}/${DOCKERHUB_IMG}:${RELEASE_VERSION}-base"]
}

target "sdxl" {
  context = "."
  dockerfile = "Dockerfile"
  target = "final"
  args = {
    MODEL_TYPE = "sdxl"
  }
  tags = ["${DOCKERHUB_REPO}/${DOCKERHUB_IMG}:${RELEASE_VERSION}-sdxl"]
  inherits = ["base"]
}

target "sd3" {
  context = "."
  dockerfile = "Dockerfile"
  target = "final"
  args = {
    MODEL_TYPE = "sd3"
    HUGGINGFACE_ACCESS_TOKEN = "${HUGGINGFACE_ACCESS_TOKEN}"
  }
  tags = ["${DOCKERHUB_REPO}/${DOCKERHUB_IMG}:${RELEASE_VERSION}-sd3"]
  inherits = ["base"]
}

target "flux1-schnell" {
  context = "."
  dockerfile = "Dockerfile"
  target = "final"
  args = {
    MODEL_TYPE = "flux1-schnell"
    HUGGINGFACE_ACCESS_TOKEN = "${HUGGINGFACE_ACCESS_TOKEN}"
  }
  tags = ["${DOCKERHUB_REPO}/${DOCKERHUB_IMG}:${RELEASE_VERSION}-flux1-schnell"]
  inherits = ["base"]
}

target "flux1-dev" {
  context = "."
  dockerfile = "Dockerfile"
  target = "final"
  args = {
    MODEL_TYPE = "flux1-dev"
    HUGGINGFACE_ACCESS_TOKEN = "${HUGGINGFACE_ACCESS_TOKEN}"
  }
  tags = ["${DOCKERHUB_REPO}/${DOCKERHUB_IMG}:${RELEASE_VERSION}-flux1-dev"]
  inherits = ["base"]
}

# Modified 2025-01-27
# Modified 2025-02-03
# Modified 2025-08-14
# Modified 2025-09-27
# Modified 2025-11-09
# Modified 2024-04-17
# Modified 2024-05-30
# Modified 2024-10-18
# Modified 2024-10-19
# Modified 2025-02-14
# Modified 2025-04-25
# Modified 2025-05-15
# Modified 2025-06-24
# Modified 2025-06-25
# Modified 2025-06-26
# Modified 2025-08-01
# Modified 2025-10-29
# Modified 2024-03-03
# Modified 2024-03-22
# Modified 2024-07-07
# Modified 2024-07-11
# Modified 2024-08-11
# Modified 2024-08-24
# Modified 2024-11-08
# Modified 2024-12-19
# Modified 2025-01-01
# Modified 2025-01-07
# Modified 2025-02-13
# Modified 2025-02-16
# Modified 2025-03-06
# Modified 2025-03-21
# Modified 2025-04-14
# Modified 2025-06-27
# Modified 2025-10-22
# Modified 2025-11-03
# Modified 2025-11-14
# Modified 2024-02-15
# Modified 2024-03-05
# Modified 2024-03-25
