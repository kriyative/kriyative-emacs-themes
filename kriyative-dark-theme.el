;;; kriyative-dark-theme.el -- green text on black background

;; Author: Ram Krishnan <kriyative@gmail.com>
;; Url: https://github.com/kriyative/kriyative-emacs-themes
;; Package-Requires: ((emacs "24"))

(require 'kriyative-theme-core)

(deftheme kriyative-dark
  "Green text on Black background based minimalist theme")

(defgroup kriyative-dark nil
  "Kriyative dark theme options."
  :group 'faces)

(let* ((bg "black")
       (fg "green3")
       (bg-dim (kriyative--darken-color bg 0.2))
       (fg-dim (kriyative--darken-color fg 0.2))
       (bg-bright (kriyative--lighten-color bg 0.2))
       (fg-bright (kriyative--lighten-color fg 0.2))
       (cursor "red")
       (warning "red")
       (builtin fg)
       (function fg-bright)
       (type fg-dim)
       (keyword fg)
       (str fg-dim)
       (comment fg-dim)
       (url "#3737D6")
       (url-visited "#806088")
       (bg-highlight "#ececef"))
  (custom-theme-set-faces
   'kriyative-dark
   ;; standard faces
   `(default ((t (:background ,bg :foreground ,fg))))
   `(cursor ((t (:background ,cursor))))
   `(region ((t (:background ,fg-dim :foreground ,bg-dim))))
   `(highlight ((t (:background ,bg-highlight))))
   `(header-line ((t (:foreground ,fg))))
   `(mode-line ((t (:background ,fg :foreground ,bg))))
   `(mode-line-inactive ((t (:background ,bg-dim :foreground ,fg))))
   `(vertical-border ((t (:foreground ,fg :background ,fg))))
   `(fringe ((t (:background ,bg))))
   `(font-lock-string-face ((t (:foreground ,str))))
   `(font-lock-comment-face ((t (:foreground ,comment))))
   `(font-lock-warning-face ((t (:foreground ,warning))))
   `(font-lock-keyword-face ((t (:foreground ,keyword))))
   `(font-lock-builtin-face ((t (:foreground ,builtin))))
   `(font-lock-function-name-face ((t (:foreground ,function))))
   `(font-lock-constant-face ((t (:foreground ,function))))
   `(font-lock-variable-name-face ((t (:foreground ,function))))
   `(font-lock-type-face ((t (:foreground ,type))))
   `(lisp-global-var-face ((t (:inherit default :weight bold))))
   `(lisp-constant-var-face ((t (:inherit lisp-global-var-face))))
   `(link ((t (:foreground ,url :underline (:color ,url)))))
   `(link-visited
     ((t (:foreground ,url-visited :underline (:color ,url-visited)))))
   ;; dired
   `(dired-directory ((t (:inherit default :weight bold))))
   `(dired-mark ((t (:foreground ,keyword :weight bold))))
   `(dired-marked ((t (:foreground ,function))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory
                (file-name-directory load-file-name))))

(provide-theme 'kriyative-dark)

;;; kriyative-dark-theme.el ends here
