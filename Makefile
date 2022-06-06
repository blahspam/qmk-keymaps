.PHONY: gmmk_pro
gmmk_pro: qmk_firmware
	@mkdir -p qmk_firmware/keyboards/gmmk/pro/rev1/ansi/keymaps/blahspam
	@cp -v gmmk_pro/* qmk_firmware/keyboards/gmmk/pro/rev1/ansi/keymaps/blahspam
	@cd qmk_firmware && qmk compile -kb gmmk/pro/ansi -km blahspam

qmk_firmware:
	@git clone https://github.com/qmk/qmk_firmware.git qmk_firmware
	@cd qmk_firmware && make git-submodule