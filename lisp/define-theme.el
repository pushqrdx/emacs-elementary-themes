;;; define-theme.el --- Basic theme generator for Emacs  -*- lexical-binding:t -*-

;;; Code:

(require 'color)

(defmacro define-theme (name 
						&key background
			     &key foreground
			     &key error
			     &key warning
			     &key success
			     &key info
			     &key keyword
			     &key type
						&key constant
						
						&key ansi-color-black
						&key ansi-color-red
						&key ansi-color-green
						&key ansi-color-yellow
						&key ansi-color-blue
						&key ansi-color-magenta
						&key ansi-color-cyan
						&key ansi-color-white)
  (let ((background60 (color-lighten-name background 60))
	(background50 (color-lighten-name background 50))
	(background40 (color-lighten-name background 40))
	(background30 (color-lighten-name background 30))
	(background20 (color-lighten-name background 20))
	(background10 (color-lighten-name background 10))
		(background5  (color-lighten-name background 5))
		(background-2 (color-darken-name background 2))
		(ansi-color-bright-black (color-lighten-name background 50))
		(ansi-color-bright-red (color-lighten-name background 50))
		(ansi-color-bright-green (color-lighten-name background 50))
		(ansi-color-bright-yellow (color-lighten-name background 50))
		(ansi-color-bright-blue (color-lighten-name background 50))
		(ansi-color-bright-magenta (color-lighten-name background 50))
		(ansi-color-bright-cyan (color-lighten-name background 50))
		(ansi-color-bright-white (color-lighten-name background 50)))
    `(progn
       (deftheme ,name)
       (let ((class '((class color) (min-colors 89))))
	 (custom-theme-set-faces
	  ',name
	  `(default ((,class (:background ,,background :foreground ,,foreground))))
	  `(cursor ((,class (:background ,,background50))))
	  `(vertical-border ((,class (:background ,,background :foreground ,,background))))
	  ;; Font-lock
	  `(font-lock-builtin-face ((,class (:foreground ,,keyword))))
	  `(font-lock-comment-face ((,class (:foreground ,,background60))))
	  `(font-lock-constant-face ((,class (:foreground ,,constant))))
	  `(font-lock-function-name-face ((,class (:foreground ,,foreground))))
	  `(font-lock-keyword-face ((,class (:foreground ,,keyword))))
	  `(font-lock-string-face ((,class (:foreground ,,constant))))
	  `(font-lock-type-face ((,class (:foreground ,,type))))
	  `(font-lock-variable-name-face ((,class (:foreground ,,foreground :bold t))))
	  `(font-lock-warning-face ((,class (:foreground ,,warning))))
	  ;; Highlighting
	  `(error   ((,class (:foreground ,,error))))
	  `(warning ((,class (:foreground ,,warning))))
	  `(fringe ((,class (:background ,,background5))))
	  `(line-number ((,class (:foreground ,,background30))))
	  `(linum ((,class (:inherit line-number))))
	  `(show-paren-match ((,class (:foreground ,,success))))
	  `(show-paren-mismatch ((,class (:foreground ,,error :bold t))))
	  `(highlight ((,class (:background ,,background10))))
	  `(region ((,class (:background ,,background30))))
	  `(secondary-selection ((,class (:inherit region))))
	  `(isearch ((,class (:background ,,background20 :foreground ,,success))))
	  `(lazy-highlight ((,class (:background ,,background10 :foreground ,,info))))
	  ;; Modeline
		  `(mode-line ((,class (:background ,,background5 :foreground ,,foreground))))
		  `(mode-line-inactive ((,class (:background ,,background :foreground ,,background20))))
	  ;; Minibuffer
	  `(minibuffer-prompt ((,class (:foreground ,,keyword))))
	  ;; Whitespace
	  `(whitespace-big-indent ((,class (:foreground ,,background :background nil))))
	  `(whitespace-empty ((,class (:foreground ,,background :background nil))))
	  `(whitespace-hspace ((,class (:foreground ,,background :background nil))))
	  `(whitespace-indentation ((,class (:foreground ,,background :background nil))))
	  `(whitespace-line ((,class (:background nil))))
	  `(whitespace-missing-newline-at-eof ((,class (:foreground ,,background :background ,,error))))
	  `(whitespace-newline ((,class (:foreground ,,background :background nil))))
	  `(whitespace-space ((,class (:foreground ,,background :background nil))))
	  `(whitespace-space-after-tab ((,class (:foreground ,,background :background nil))))
	  `(whitespace-space-before-tab ((,class (:foreground ,,background :background nil))))
	  `(whitespace-tab ((,class (:foreground ,,background :background nil))))
	  `(whitespace-trailing ((,class (:foreground ,,background :background ,,error))))
	  ;; Help faces
	  `(help-key-binding ((,class (:background ,,background20 :foreground ,,info))))
	  ;; Button and link faces
	  `(link ((,class (:bold t :underline t))))
	  `(link-visited ((,class (:bold nil :underline t))))
	  `(button ((,class (:background ,,background20 :foreground ,,foreground))))
		  ;; ANSI colors
		  `(ansi-color-black ((,class (:foreground ,,ansi-color-black))))
		  `(ansi-color-red ((,class (:foreground ,,ansi-color-red))))
		  `(ansi-color-green ((,class (:foreground ,,ansi-color-green))))
		  `(ansi-color-yellow ((,class (:foreground ,,ansi-color-yellow))))
		  `(ansi-color-blue ((,class (:foreground ,,ansi-color-blue))))
		  `(ansi-color-magenta ((,class (:foreground ,,ansi-color-magenta))))
		  `(ansi-color-cyan ((,class (:foreground ,,ansi-color-cyan))))
		  `(ansi-color-white ((,class (:foreground ,,ansi-color-white))))
		  `(ansi-color-bright-black ((,class (:foreground ,,ansi-color-bright-black))))
		  `(ansi-color-bright-red ((,class (:foreground ,,ansi-color-bright-red))))
		  `(ansi-color-bright-green ((,class (:foreground ,,ansi-color-bright-green))))
		  `(ansi-color-bright-yellow ((,class (:foreground ,,ansi-color-bright-yellow))))
		  `(ansi-color-bright-blue ((,class (:foreground ,,ansi-color-bright-blue))))
		  `(ansi-color-bright-magenta ((,class (:foreground ,,ansi-color-bright-magenta))))
		  `(ansi-color-bright-cyan ((,class (:foreground ,,ansi-color-bright-cyan))))
		  `(ansi-color-bright-white ((,class (:foreground ,,ansi-color-bright-white))))
		  ;; EShell
		  `(eshell-prompt ((,class (:foreground ,,foreground :bold t))))
		  `(eshell-ls-archive ((,class (:foreground ,,ansi-color-magenta))))
		  `(eshell-ls-backup ((,class (:foreground ,,ansi-color-yellow))))
		  `(eshell-ls-clutter ((,class (:foreground ,,ansi-color-red))))
		  `(eshell-ls-directory ((,class (:foreground ,,ansi-color-blue))))
		  `(eshell-ls-executable ((,class (:foreground ,,ansi-color-green))))
		  `(eshell-ls-missing ((,class (:foreground ,,ansi-color-red))))
		  `(eshell-ls-product ((,class (:foreground ,,ansi-color-yellow))))
		  `(eshell-ls-readonly ((,class (:foreground ,,ansi-color-yellow))))
		  `(eshell-ls-special ((,class (:foreground ,,ansi-color-magenta))))
		  `(eshell-ls-symlink ((,class (:foreground ,,ansi-color-cyan))))
		  `(eshell-ls-unreadable ((,class (:foreground ,,ansi-color-red))))
	      ;; --- 3rd Party
		  ;; Git Gutter
		  `(git-gutter:added ((,class (:foreground ,,success :bold t))))
		  `(git-gutter:deleted ((,class (:foreground ,,error :bold t))))
		  `(git-gutter:modified ((,class (:foreground ,,info :bold t))))
		  ;; VTerm
		  `(vterm-color-black ((,class (:foreground ,,ansi-color-black))))
		  `(vterm-color-red ((,class (:foreground ,,ansi-color-red))))
		  `(vterm-color-green ((,class (:foreground ,,ansi-color-green))))
		  `(vterm-color-yellow ((,class (:foreground ,,ansi-color-yellow))))
		  `(vterm-color-blue ((,class (:foreground ,,ansi-color-blue))))
		  `(vterm-color-magenta ((,class (:foreground ,,ansi-color-magenta))))
		  `(vterm-color-cyan ((,class (:foreground ,,ansi-color-cyan))))
		  `(vterm-color-white ((,class (:foreground ,,ansi-color-white)))))))))

(provide 'define-theme)

;;; define-theme.el ends here

