;;; elementary-themes.el --- An theme pack for Emacs focusing on simplicity and beauty.

;;; Code:

(let ((dir (file-name-directory load-file-name)))
  (add-to-list 'load-path (concat dir "/lisp"))
  (add-to-list 'custom-theme-load-path (concat dir "/themes")))

(provide 'elementary-themes)

;;; elementary-themes.el ends here