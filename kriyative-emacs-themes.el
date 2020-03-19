(unless (fboundp 'color-rgb-to-hex)
  (defun color-rgb-to-hex (red green blue &rest _)
    (format "#%02x%02x%02x"
            (* 255 red)
            (* 255 green)
            (* 255 blue))))

(defun kriyative--darken-color (color &optional delta)
  (let ((values (color-name-to-rgb color))
        (delta (or delta 0.1)))
    (apply 'color-rgb-to-hex
           (mapcar (lambda (v) (max 0 (- v delta))) values))))

(defun kriyative--lighten-color (color &optional delta)
  (let ((values (color-name-to-rgb color))
        (delta (or delta 0.1)))
    (apply 'color-rgb-to-hex
           (mapcar (lambda (v) (min 1 (+ delta v))) values))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide 'kriyative-emacs-themes)
