SMTLIB_DIR=smtlib
SMTLIB_PDF=axioms-smtlib

TLAPLUS_DIR=tlaplus
TLAPLUS_PDF=axioms-tlaplus


.PHONY: smtlib tlaplus
all: smtlib tlaplus

smtlib:
	$(MAKE) -C $(SMTLIB_DIR) main;
	@mv $(SMTLIB_DIR)/main.pdf $(SMTLIB_PDF).pdf

tlaplus:
	$(MAKE) -C $(TLAPLUS_DIR) main;
	@mv $(TLAPLUS_DIR)/main.pdf $(TLAPLUS_PDF).pdf


.PHONY: clean cleanall

clean:
	$(MAKE) -C $(SMTLIB_DIR) clean

cleanall:
	$(MAKE) -C $(SMTLIB_DIR) cleanall;
	@rm -f $(SMTLIB_PDF).pdf

