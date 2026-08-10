(deftheme min-bling "Like a scollars bed")

(let ((accent  "#f66151")    
      (diff-bg "#dababa")
      (diff-fg "#bc8c8c")
      ;;(gray-11 "#1f1d1d")
      (gray-11 "#111111")
      (gray-1c "#252121")    
      (gray-22 "#1f1d1d")
      (gray-44 "#696262")
      (gray-66 "#dababa")    
      (gray-77 "#dababa")    
      (gray-7c "#dababa") 
      (gray-99 "#dababa")  
      (gray-aa "#f66151")
      (accent-2 "#f666aa")   
      (purple  "#dc8add"))  

  (custom-theme-set-faces
   'min-bling

   ;; Base faces
   `(default ((t (:foreground ,gray-7c :background ,gray-11))))
   `(cursor ((t (:background ,accent))))
   `(region ((t (:foreground ,accent :background ,gray-22))))
   `(highlight ((t (:background ,gray-22))))
   `(hl-line ((t (:background ,gray-22))))
   `(fringe ((t (:background ,gray-11 :foreground ,gray-66))))
   `(vertical-border ((t (:foreground ,gray-44))))

   ;; Font lock
   `(font-lock-comment-face ((t (:foreground ,gray-44 :slant italic))))
   `(font-lock-doc-face ((t (:foreground ,accent))))
   `(font-lock-string-face ((t (:foreground ,accent-2))))
   `(rust-string-interpolation ((t (:foreground ,gray-99))))
   `(font-lock-keyword-face ((t (:foreground ,purple))))
   `(font-lock-builtin-face ((t (:foreground ,gray-7c))))
   `(font-lock-function-name-face ((t (:foreground ,gray-aa :slant italic))))
   `(rust-ampersand-face ((t (:foreground ,gray-aa))))
   `(rust-unsafe ((t (:foreground ,gray-aa))))
   `(rust-question-mark ((t (:foreground ,gray-aa))))
   `(rust-question-mark-face ((t (:foreground ,gray-aa))))
;;   `(rust-builtin-formatting-macro ((t (:foreground ,purple))))
   `(sh-quoted-exec ((t (:foreground ,gray-aa))))
   `(font-lock-variable-name-face ((t (:foreground ,gray-99))))
   `(font-lock-type-face ((t (:foreground ,accent-2 :slant italic))))
   `(font-lock-constant-face ((t (:foreground ,gray-7c))))
   `(font-lock-warning-face ((t (:foreground ,gray-44))))
   `(font-lock-negation-char-face ((t (:foreground ,purple))))
   `(font-lock-operator-face ((t (:foreground ,purple))))
   `(font-lock-punctuation-face ((t (:foreground ,purple))))
   `(font-lock-preprocessor-face ((t (:foreground ,purple))))
   `(button ((t (:foreground ,gray-aa :background ,gray-22))))
   

   ;; Mode line
   




;;(mode-line ((t (:background ,gray-11 :foreground ,accent-2 :box nil))))
;;`(mode-line-inactive ((t (:background ,gray-11 :foreground ,gray-44 :box nil))))
   `(mode-line ((t (:foreground ,accent-2 :background ,gray-22 :slant italic :weigth normal ))))
   `(mode-line-inactive ((t (:foreground ,gray-44 :background ,gray-22 :box (:line-width 1 :color ,gray-1c)))))
   `(mode-line-buffer-id ((t (:weight bold))))

   ;; Minibuffer
   `(minibuffer-prompt ((t (:foreground ,accent :weight bold))))

   ;; Search
   `(isearch ((t (:foreground ,gray-7c :background ,gray-22 :weight bold))))
   `(match ((t (:background ,gray-22 :foreground ,gray-7c))))
   `(completions-common-part ((t (:background ,gray-22 :foreground ,gray-7c))))
   `(lazy-highlight ((t (:foreground ,gray-7c :background ,gray-1c :underline t))))

   ;; Line numbers
   `(line-number ((t (:foreground ,gray-44 :background ,gray-11))))
   `(line-number-current-line ((t (:foreground ,gray-66 :background ,gray-11 :weight bold))))

   ;; Parentheses matching
   `(show-paren-match ((t (:foreground ,gray-99 :background ,gray-11 :weight bold))))
   `(show-paren-mismatch ((t (:foreground ,accent :background ,gray-11 :weight bold))))

   ;; Error/warning faces
   `(error ((t (:foreground ,accent :weight bold))))
   `(warning ((t (:foreground ,accent :weight bold))))
   `(success ((t (:foreground ,gray-77 :weight bold))))

   `(flycheck-warning ((t (:underline (:color ,gray-44 :style line)))))
   `(flycheck-error ((t (:underline (:color ,accent :style line)))))
   `(flycheck-note ((t (:underline (:color ,gray-44 :style line)))))

   `(flymake-warning ((t (:underline (:color ,gray-44 :style line)))))
   `(flymake-error ((t (:underline (:color ,accent :style line)))))
   `(flymake-note ((t (:underline (:color ,gray-44 :style line)))))


   ;; Diagnostic severity levels
   `(lsp-lsp-flycheck-error-unnecessary-face ((t (:foreground ,gray-22 :underline nil))))
   `(lsp-lsp-flycheck-warning-unnecessary-face ((t (:foreground ,gray-22 :underline nil))))

   ;; LSP UI faces
   `(lsp-ui-doc-background ((t (:background ,gray-22))))
   `(lsp-ui-doc-header ((t (:foreground ,gray-22))))
   `(lsp-ui-peek-filename ((t (:foreground ,accent))))
   `(lsp-ui-peek-header ((t (:background ,gray-22))))
   `(lsp-ui-sideline-code-action ((t (:foreground ,accent))))

   `(lsp-face-highlight-read ((t (:background ,gray-22))))
   `(lsp-face-highlight-write ((t (:background ,gray-22))))
   `(lsp-face-highlight-textual ((t (:background ,gray-22))))

   `(eglot-type-hint-face ((t (:foreground ,gray-44))))
   `(eglot-inlay-hint-face ((t (:foreground ,gray-44))))
;;   `(eglot-highlight-symbol-face ((t (:foreground ,gray-99 :background ,gray-22))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,gray-44))))
   `(eglot-semantic-declaration ((t (:foreground ,gray-aa :slant italic))))
   `(popup-tip-face ((t (:foreground ,gray-77 :background ,gray-22))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gray-aa :weight bold))))
   `(dired-symlink ((t (:foreground ,gray-aa))))
   `(dired-executable ((t (:foreground ,gray-77))))

   `(minibuffer-prompt ((t (:foreground ,accent :weight bold))))
   `(help-key-binding ((t (:foreground ,accent :background ,gray-11))))
   `(read-multiple-choice-face ((t (:foreground ,accent :weight bold))))

   ;; Company
   `(company-tooltip ((t (:foreground ,gray-7c :background ,gray-1c))))
   `(company-tooltip-gray-22 ((t (:foreground ,gray-7c :background ,gray-22))))
   `(company-tooltip-common ((t (:foreground ,accent :weight bold))))

   `(corfu-current ((t (:foreground ,accent-2))))
   `(corfu-annotations ((t (:foreground ,gray-44))))
   `(orderless-match-face-0 ((t (:foreground ,accent-2 :weight semi-bold))))
   `(completions-annotations ((t (:foreground ,gray-44))))
   
   ;; Org mode
   `(org-level-1 ((t (:foreground ,gray-aa :weight bold :height 1.3))))
   `(org-level-2 ((t (:foreground ,purple :weight bold :height 1.2))))
   `(org-level-3 ((t (:foreground ,gray-77 :weight bold :height 1.1))))
   `(org-level-4 ((t (:foreground ,accent :weight bold))))
   `(org-code ((t (:foreground ,gray-aa :background ,gray-1c))))
   `(org-block ((t (:background ,gray-1c))))
   `(org-block-begin-line ((t (:foreground ,accent :background ,gray-1c))))
   `(org-block-end-line ((t (:inherit org-block-begin-line))))

   ;; Markdown
   `(markdown-header-face-1 ((t (:inherit org-level-1))))
   `(markdown-header-face-2 ((t (:inherit org-level-2))))
   `(markdown-header-face-3 ((t (:inherit org-level-3))))
   `(markdown-code-face ((t (:inherit org-code))))

   ;; Magit
   `(magit-branch-local ((t (:foreground ,gray-aa))))
   `(magit-branch-remote ((t (:foreground ,gray-77))))
   `(magit-diff-added ((t (:foreground ,gray-77 :background ,(concat gray-77 "20")))))
   `(magit-diff-removed ((t (:foreground ,accent :background ,(concat accent "20")))))
   `(magit-diff-context ((t (:foreground ,gray-66))))
   `(diff-hl-margin-change ((t (:foreground ,gray-44 :background ,gray-22))))
   `(diff-hl-change ((t (:foreground ,gray-44 :background ,gray-22))))
   `(diff-hl-margin-insert ((t (:foreground ,gray-44 :background ,gray-22))))
   `(diff-hl-margin-delete ((t (:foreground ,gray-44 :background ,gray-22))))

   ;; Which-key
   `(which-key-key-face ((t (:foreground ,accent :weight bold))))
   `(which-key-description-face ((t (:foreground ,gray-7c))))
   `(which-key-group-description-face ((t (:foreground ,purple))))

   ;; Helm/Ivy
   `(helm-gray-22 ((t (:foreground ,accent :background ,gray-22))))
   `(ivy-current-match ((t (:foreground ,accent :background ,gray-22 :weight bold))))
   `(ivy-minibuffer-match-highlight ((t (:background ,gray-22 ))))
   `(ivy-minibuffer-match-1 ((t (:background ,gray-22 ))))
   `(ivy-minibuffer-match-face-1 ((t (:background ,gray-22 ))))
   `(ivy-minibuffer-match-face-2 ((t (:foreground ,accent :background ,gray-22 ))))

   ;; vterm
   `(vterm-color-black ((t ( :foreground ,gray-11 :background ,gray-11))))
   `(vterm-color-red ((t ( :foreground ,accent :background ,accent))))
   `(vterm-color-gray-77 ((t ( :foreground ,gray-77 :background ,gray-77))))
   `(vterm-color-yellow ((t ( :foreground ,gray-99 :background ,gray-99))))
   `(vterm-color-blue ((t ( :foreground ,gray-aa :background ,gray-aa))))
   `(vterm-color-magenta ((t ( :foreground ,purple :background ,purple))))
   `(vterm-color-gray-aa ((t ( :foreground ,gray-aa :background ,gray-aa))))
   `(vterm-color-white ((t( :foreground ,gray-7c :background ,gray-7c))))
   ))

(provide-theme 'min-bling)


