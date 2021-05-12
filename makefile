.PHONY: quality style 


check_dirs := spc eqa 
# Check that source code meets quality standards

quality:
	#black --check --line-length 119 --target-version py36 $(check_dirs)
	# isort --check-only $(check_dirs)
	flake8 $(check_dirs)

# Format source code automatically

style:
	black --line-length 119 --target-version py36 $(check_dirs)
	isort $(check_dirs)