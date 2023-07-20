(require 'whitespace)
(global-whitespace-mode 1)

;; Define the whitespace style.
(setq whitespace-style
      (quote (face spaces empty tabs newline trailing space-mark tab-mark newline-mark lines-tail)))

;; limit line length
(setq whitespace-line-column 80)

;; Whitespace color corrections.
(require 'color)
(let* ((ws-lighten 30) ;; Amount in percentage to lighten up black.
       (ws-color (color-lighten-name "#000000" ws-lighten)))
  (custom-set-faces
   `(whitespace-newline                ((t (:foreground ,ws-color))))
   `(whitespace-missing-newline-at-eof ((t (:foreground ,ws-color))))
   `(whitespace-space                  ((t (:foreground ,ws-color))))
   `(whitespace-space-after-tab        ((t (:foreground ,ws-color))))
   `(whitespace-space-before-tab       ((t (:foreground ,ws-color))))
   `(whitespace-tab                    ((t (:foreground ,ws-color))))
   `(whitespace-trailing               ((t (:foreground ,ws-color))))))


;; Make these characters represent whitespace.
(setq-default whitespace-display-mappings
      '(
        ;; space -> · else .
        (space-mark 32 [183] [46])
        ;; carriage return (Windows) -> ¶ else #
        (newline-mark ?\r [182] [35])
        ;; tabs -> » else >
        (tab-mark ?\t [187 ?\t] [62 ?\t])))

;; Don't enable whitespace for.
(setq-default whitespace-global-modes
              '(not shell-mode
                    help-mode
                    magit-mode
                    magit-diff-mode
                    ibuffer-mode
                    dired-mode
                    occur-mode))

;; Set whitespace actions.
(setq-default whitespace-action
              '(cleanup auto-cleanup))
