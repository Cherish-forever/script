;;; kernel-c-style.el ---                            -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Cherish

;; Author: Cherish <guoweiwei@syriusrobotics.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;; Make a non-standard key binding.  We can put this in
;; c-mode-base-map because c-mode-map, c++-mode-map, and so on,
;; inherit from it.
(defun kernel-c-initialization-hook ()
  (define-key c-mode-base-map "\C-m" 'c-context-line-break))
(add-hook 'c-initialization-hook 'kernel-c-initialization-hook)

;; offset customizations not in my-c-style
;; This will take precedence over any setting of the syntactic symbol
;; made by a style.
(setq c-offsets-alist '((member-init-intro . ++)))

;; Create kernel c style.
(defconst kernel-c-style
  '((indent-tabs-mode . t)
    (c-basic-offset  . 8)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist . ((brace-list-open)
			       (brace-entry-open)
			       (substatement-open after)
			       (block-close . c-snug-do-while)
			       (arglist-cont-nonempty)))
    (c-cleanup-list . (brace-else-brace))
    (c-offsets-alist . ((statement-block-intro . +)
			(knr-argdecl-intro     . 0)
			(substatement-open     . 0)
			(substatement-label    . 0)
			(label                 . 0)
			(statement-cont        . +)))
    (c-echo-syntactic-information-p . t))
  "Kernel C Programming Style")
(c-add-style "kernel" kernel-c-style)

;; Customizations for all modes in CC Mode.
(defun kernel-c-mode-common-hook ()
  ;; set kernel c style for the current buffer
  (c-set-style "kernel")
  ;; other customizations
  (setq tab-width 8
        ;; this will make sure spaces are used instead of tabs
        indent-tabs-mode nil)
  ;; we like auto-newline, but not hungry-delete
  (c-toggle-auto-newline 1))
(add-hook 'c-mode-common-hook 'kernel-c-mode-common-hook)

(provide 'kernel-c-style)
;;; kernel-c-style.el ends here
