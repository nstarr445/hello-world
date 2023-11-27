# Check if the environment is Red Hat UBI8
ifeq ($(shell grep -c 'Red Hat' /etc/redhat-release),1)
    DOCKER_IMAGE := redhat/ubi8
else
    $(error "This Makefile requires a Red Hat UBI8 environment.")
endif

# Build target
build:
	docker run --rm -v $(PWD):/app -w /app $(DOCKER_IMAGE) make build_internal
	@echo "Build completed successfully!"

# Internal build target (actual build process)
build_internal:
	# Your build commands go here
	# For example:
	# gcc -o my_program my_source_code.c
	# or any other build commands specific to your project

.PHONY: build build_internal
