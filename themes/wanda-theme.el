;;; wanda-theme.el --- Vision  -*- lexical-binding:t -*-

;;; Code:

(require 'define-theme)

(define-theme wanda
  :background "#1b122b"
  :foreground "#e8f0db"
  :error "#ff6666"
  :warning "#e6a219"
  :success "#36cf17"
  :info "#99ffff"
  :keyword "#e63737"
  :type "#e6ac37"
  :constant "#7bad1f"
  ;; ansi colors
  :ansi-color-black "#0d0d0d"
  :ansi-color-red "#ff6666"
  :ansi-color-green "#36cf17"
  :ansi-color-yellow "#e6a219"
  :ansi-color-blue "#99ffff"
  :ansi-color-magenta "#f28cc8"
  :ansi-color-cyan "#81dad3"
  :ansi-color-white "#f3f7ed")

(provide-theme 'wanda)
