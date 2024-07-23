(defun remove-blackspace()
  ;; Remove whitespace in the end of line
  (add-hook 'before-save-hook 'delete-trailing-whitespace)
  (add-hook 'before-save-hook 'whitespace-cleanup)
  ;; remove whileline between line
  ;;(add-hook 'before-save-hook 'delete-blank-lines)
  ;; Display white speace
  (global-set-key [f1] 'whitespace-newline-mode)
  )

(remove-blackspace)
(provide 'pemacs-remove-blackspace)
