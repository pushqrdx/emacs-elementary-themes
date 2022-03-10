;;; define-theme.el --- Basic theme generator for Emacs  -*- lexical-binding:t -*-

;;; Code:

(require 'color)

(defmacro define-theme (name &key background
			     &key foreground
			     &key error
			     &key warning
			     &key success
			     &key info
			     &key keyword
			     &key type
			     &key constant)
  (let ((background60 (color-lighten-name background 60))
	(background50 (color-lighten-name background 50))
	(background40 (color-lighten-name background 40))
	(background30 (color-lighten-name background 30))
	(background20 (color-lighten-name background 20))
	(background10 (color-lighten-name background 10))
	(background5 (color-lighten-name background 5))
	(background-2 (color-darken-name background 2)))
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
	  ;; `(mode-line ((,class (:background ,,background5 :height 0.9 :foreground ,,foreground))))
	  ;; `(mode-line-inactive ((,class (:background ,,background :foreground ,,background20))))

	  `(mode-line ((,class (:background ,,background5 :height 0.9 :foreground ,,foreground :box (:line-width 6 :color ,,background5) :underline ,,background-2 :overline ,,background-2))))
	  `(mode-line-inactive ((,class (:background ,,background :foreground ,,background20 :box (:line-width 6 :color ,,background)))))
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
	  `(header-line ((,class (:background ,,background5 :foreground ,,foreground)))))))))

(provide 'define-theme)

;;; define-theme.el ends here

