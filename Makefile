SMTLIB_DIR=smtlib
SMTLIB_PDF=axioms-smtlib

.PHONY: smtlib
smtlib:
	$(MAKE) -C $(SMTLIB_DIR) main;
	@mv $(SMTLIB_DIR)/main.pdf $(SMTLIB_PDF).pdf

.PHONY: clean cleanall
clean:
	$(MAKE) -C $(SMTLIB_DIR) clean

cleanall:
	$(MAKE) -C $(SMTLIB_DIR) cleanall;
	@rm -f $(SMTLIB_PDF).pdf
