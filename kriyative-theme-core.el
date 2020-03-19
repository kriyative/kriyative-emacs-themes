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
           (mapcar (lambda (v) (- v delta)) values))))

(defun kriyative--lighten-color (color &optional delta)
  (let ((values (color-name-to-rgb color))
        (delta (or delta 0.1)))
    (apply 'color-rgb-to-hex
           (mapcar (lambda (v) (+ delta v)) values))))

(provide 'kriyative-theme-core)
