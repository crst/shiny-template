.PHONY: install-dependencies clean run-app run-shiny-dev

install-dependencies:
	mkdir -p library
	$(shell export R_LIBS="library" Rscript dep.R)

clean:
	rm -rf library

run-app:
	$(shell R_LIBS="library" Rscript app.R)

run-shiny-dev:
	chmod u+x run_shiny_dev.sh
	./run_shiny_dev.sh
