;;; fashion-nugget-common.el --- Shared face logic for the fashion-nugget theme family -*- lexical-binding: t; -*-

(defun fashion-nugget--set-faces (theme-name bg bg-slight bg-soft bg-raised fg fg-dim accent accent-alt special purple
                                             &optional accent-ink accent-alt-ink special-ink purple-ink)
  "Apply the fashion-nugget face list to THEME-NAME using the given palette.
The optional -INK colors are text-strength versions of the four pastels,
used where a color has to read as text or an underline. Each one falls
back to its pastel, which is right for a dark palette."
  (let ((accent-ink     (or accent-ink accent))
        (accent-alt-ink (or accent-alt-ink accent-alt))
        (special-ink    (or special-ink special))
        (purple-ink     (or purple-ink purple)))

  (setq rustic-ansi-faces
     (vector bg accent purple special fg accent-alt fg fg))

  (custom-theme-set-faces
   theme-name

   ;; Base faces
   `(default ((t (:foreground ,fg-dim :background ,bg))))
   `(cursor ((t (:background ,special))))
   `(region ((t (:foreground ,bg :background ,fg ))))
   `(highlight ((t (:background ,bg-soft))))
   `(hl-line ((t (:background ,bg-slight))))
   `(fringe ((t (:background ,bg :foreground ,fg))))
   `(vertical-border ((t (:foreground ,bg-soft :background ,bg-soft))))

   ;; Font lock
   `(font-lock-comment-face ((t (:foreground ,bg-raised :slant italic))))
   `(font-lock-doc-face ((t (:foreground ,fg-dim :background ,accent))))
   `(font-lock-string-face ((t (:foreground ,fg-dim :background ,accent))))
   `(rust-string-interpolation ((t (:foreground ,fg))))
   `(font-lock-keyword-face ((t (:foreground ,fg-dim :background ,purple))))
   `(font-lock-builtin-face ((t (:foreground ,fg))))
   `(font-lock-function-name-face ((t (:foreground ,fg :weight bold))))
   `(rust-ampersand-face ((t (:foreground ,fg-dim :background ,accent-alt))))
   `(rust-unsafe ((t (:foreground ,fg-dim :background ,special))))
   `(rust-question-mark ((t (:foreground ,fg-dim :background ,accent-alt))))
   `(rust-question-mark-face ((t (:foreground ,fg-dim :background ,accent-alt))))
   `(rust-builtin-formatting-macro ((t (:foreground ,fg))))
   `(sh-quoted-exec ((t (:foreground ,fg-dim :background ,accent))))
   `(sh-heredoc ((t (:foreground ,fg))))
   `(font-lock-variable-name-face ((t (:foreground ,fg-dim :background ,accent))))
   `(font-lock-type-face ((t (:foreground ,fg-dim :background ,special))))
   `(font-lock-constant-face ((t (:foreground ,fg))))
   `(font-lock-warning-face ((t (:foreground ,fg-dim))))
   `(font-lock-negation-char-face ((t (:foreground ,fg-dim :background ,purple))))
   `(font-lock-operator-face ((t (:foreground ,fg-dim :background ,purple))))
   `(font-lock-punctuation-face ((t (:foreground ,fg-dim :background ,purple))))
   `(font-lock-preprocessor-face ((t (:foreground ,fg-dim :background ,accent-alt))))
   `(racket-keyword-argument-face ((t (:foreground ,fg-dim :background ,accent-alt))))
   `(button ((t (:foreground ,fg-dim :background ,accent))))

   ;; Mode line
   `(mode-line ((t (:foreground ,fg-dim :background ,bg-soft :slant italic :weight normal))))
   `(mode-line-inactive ((t (:foreground ,fg-dim :background ,bg-slight :box (:line-width 1 :color ,bg-raised)))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mood-line-unimportant ((t (:foreground ,fg-dim))))
   `(mood-line-status-neutral ((t (:foreground ,fg-dim))))
   `(mood-line-frame-status-client ((t (:foreground ,fg-dim))))
   `(mood-line-encoding ((t (:foreground ,fg-dim))))
   `(mood-line-buffer-status-read-only ((t (:foreground ,fg-dim))))

   ;; Minibuffer
   `(minibuffer-prompt ((t (:foreground ,fg-dim :background ,accent :weight bold))))

   ;; Search
   `(isearch ((t (:foreground ,fg :background ,accent :weight bold))))
   `(match ((t (:background ,accent :foreground ,fg))))
   `(completions-common-part ((t (:background ,accent :foreground ,fg))))
   `(lazy-highlight ((t (:foreground ,fg :background ,bg-raised :underline t))))

   ;; Line numbers
   `(line-number ((t (:foreground ,bg-raised :background ,bg-slight))))
   `(line-number-current-line ((t (:foreground ,fg-dim :background ,bg-soft))))

   ;; Parentheses matching
   `(show-paren-match ((t (:foreground ,fg :background ,bg :weight bold))))
   `(show-paren-mismatch ((t (:foreground ,fg-dim :background ,accent :weight bold))))

   ;; Error/warning faces (inks: these read as text)
   `(error ((t (:foreground ,accent-ink :weight bold))))
   `(warning ((t (:foreground ,accent-alt-ink :weight bold))))
   `(success ((t (:foreground ,special-ink :weight bold))))

   `(flycheck-error ((t (:underline (:color ,accent-ink :style wave)))))
   `(flycheck-warning ((t (:underline (:color ,accent-alt-ink :style wave)))))
   `(flycheck-info ((t (:underline (:color ,purple-ink :style wave)))))

   `(flymake-error ((t (:underline (:color ,accent-ink :style wave)))))
   `(flymake-warning ((t (:underline (:color ,accent-alt-ink :style wave)))))
   `(flymake-note ((t (:underline (:color ,purple-ink :style wave)))))

   ;; Diagnostic severity levels
   `(lsp-lsp-flycheck-error-unnecessary-face ((t (:foreground ,bg-soft :underline nil))))
   `(lsp-lsp-flycheck-warning-unnecessary-face ((t (:foreground ,bg-soft :underline nil))))

   ;; LSP UI faces
   `(lsp-ui-doc-background ((t (:background ,bg-soft))))
   `(lsp-ui-doc-header ((t (:foreground ,bg-soft))))
   `(lsp-ui-peek-filename ((t (:foreground ,fg-dim :background ,accent))))
   `(lsp-ui-peek-header ((t (:background ,bg-soft))))
   `(lsp-ui-sideline-code-action ((t (:foreground ,fg-dim :background ,accent))))

   `(lsp-face-highlight-read ((t (:background ,bg-soft))))
   `(lsp-face-highlight-write ((t (:background ,bg-soft))))
   `(lsp-face-highlight-textual ((t (:background ,bg-soft))))

   `(eglot-type-hint-face ((t (:foreground ,fg-dim))))
   `(eglot-inlay-hint-face ((t (:foreground ,fg-dim))))
;;   `(eglot-highlight-symbol-face ((t (:foreground ,fg :background ,bg-soft))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,fg-dim))))
   `(eglot-semantic-declaration ((t (:foreground ,fg-dim :background ,accent :slant italic))))
   `(popup-tip-face ((t (:foreground ,fg :background ,bg-soft))))

   ;; Dired
   `(dired-directory ((t (:foreground ,fg-dim :background ,accent :weight bold))))
   `(dired-symlink ((t (:foreground ,fg-dim :background ,accent))))
   `(dired-executable ((t (:foreground ,fg))))

   `(help-key-binding ((t (:foreground ,fg-dim :background ,accent))))
   `(read-multiple-choice-face ((t (:foreground ,fg-dim :background ,accent :weight bold))))

   ;;Avy
   `(avy-lead-face ((t (:foreground ,special :background ,fg-dim))))
   `(avy-lead-face-0 ((t (:foreground ,purple :background ,fg-dim))))
   `(avy-lead-face-1 ((t (:foreground ,accent :background ,fg-dim))))
   `(avy-lead-face-2 ((t (:foreground ,accent-alt :background ,fg-dim))))
   `(avy-background-face ((t (:foreground ,bg-raised))))

   ;;Ace Window

   `(aw-background-face ((t (:foreground ,bg-raised))))
   `(aw-leading-char-face ((t (:foreground ,bg :background ,fg-dim :weight bold))))
   `(aw-minibuffer-leading-char-face ((t (:foreground ,bg :background ,fg-dim :weight bold))))

   ;; Company
   `(company-tooltip ((t (:foreground ,fg :background ,bg-raised))))
   `(company-tooltip-selection ((t (:foreground ,fg :background ,bg-soft))))
   `(company-tooltip-common ((t (:foreground ,fg-dim :background ,accent :weight bold))))

    ;; Corfu
   `(corfu-current ((t (:foreground ,fg-dim :background ,accent-alt))))
   `(corfu-annotations ((t (:foreground ,fg-dim))))
   `(corfu-default ((t (:foreground ,fg :background ,bg-slight))))
   `(orderless-match-face-0 ((t (:foreground ,fg-dim :background ,accent-alt :weight semi-bold))))
   `(completions-annotations ((t (:foreground ,fg-dim))))

      ;;Vertico
   `(vertico-multiline ((t (:foreground ,fg-dim :background ,accent))))
   `(vertico-group-title ((t (:foreground ,fg-dim))))
   `(vertico-group-separator ((t (:foreground ,fg-dim :strike-through t))))


   ;; Org mode
   `(org-level-1 ((t (:foreground ,fg-dim :background ,accent :weight bold :height 1.3))))
   `(org-level-2 ((t (:foreground ,fg-dim :background ,purple :weight bold :height 1.2))))
   `(org-level-3 ((t (:foreground ,fg :weight bold :height 1.1))))
   `(org-level-4 ((t (:foreground ,fg-dim :background ,accent :weight bold))))
   `(org-code ((t (:foreground ,fg-dim :background ,accent))))
   `(org-block ((t (:background ,bg-raised))))
   `(org-block-begin-line ((t (:foreground ,fg-dim :background ,accent))))
   `(org-block-end-line ((t (:inherit org-block-begin-line))))

   ;; Markdown
   `(markdown-header-face-1 ((t (:inherit org-level-1))))
   `(markdown-header-face-2 ((t (:inherit org-level-2))))
   `(markdown-header-face-3 ((t (:inherit org-level-3))))
   `(markdown-code-face ((t (:inherit org-code))))

   ;; Magit
   `(magit-branch-local ((t (:foreground ,fg-dim :background ,accent))))
   `(magit-branch-remote ((t (:foreground ,fg))))
   `(magit-diff-added ((t (:foreground ,fg :background ,(concat fg "20")))))
   `(magit-diff-removed ((t (:foreground ,fg-dim :background ,accent))))
   `(magit-diff-context ((t (:foreground ,fg))))
   `(diff-hl-margin-change ((t (:foreground ,fg-dim :background ,purple))))
   `(diff-hl-margin-insert ((t (:foreground ,fg-dim :background ,special))))
   `(diff-hl-margin-delete ((t (:foreground ,fg-dim :background ,accent))))

   ;; Which-key
   `(which-key-key-face ((t (:foreground ,fg-dim :background ,accent :weight bold))))
   `(which-key-description-face ((t (:foreground ,fg))))
   `(which-key-group-description-face ((t (:foreground ,fg-dim :background ,purple))))

   ;; Helm/Ivy
   `(helm-selection ((t (:foreground ,fg-dim :background ,accent))))
   `(ivy-current-match ((t (:foreground ,fg-dim :background ,accent :weight bold))))
   `(ivy-minibuffer-match-highlight ((t (:background ,bg-soft))))
   `(ivy-minibuffer-match-1 ((t (:background ,bg-soft))))
   `(ivy-minibuffer-match-face-1 ((t (:background ,bg-soft))))
   `(ivy-minibuffer-match-face-2 ((t (:foreground ,fg-dim :background ,accent))))

   ;; vterm
   `(vterm-color-black ((t (:foreground ,bg :background ,bg))))
   `(vterm-color-red ((t (:foreground ,accent :background ,accent))))
   `(vterm-color-green ((t (:foreground ,fg :background ,fg))))
   `(vterm-color-yellow ((t (:foreground ,fg :background ,fg))))
   `(vterm-color-blue ((t (:foreground ,accent :background ,accent))))
   `(vterm-color-magenta ((t (:foreground ,purple :background ,purple))))
   `(vterm-color-cyan ((t (:foreground ,accent :background ,accent))))
   `(vterm-color-white ((t (:foreground ,fg :background ,fg))))

   ;; --- ANSI / term.el colors ---
   `(term-color-black          ((t (:foreground ,bg))))
   `(term-color-red            ((t (:foreground ,accent))))
   `(term-color-green          ((t (:foreground ,purple))))
   `(term-color-yellow         ((t (:foreground ,special))))
   `(term-color-blue           ((t (:foreground ,fg))))
   `(term-color-magenta        ((t (:foreground ,accent-alt))))
   `(term-color-cyan           ((t (:foreground ,fg))))
   `(term-color-white          ((t (:foreground ,fg))))

   `(term-color-bright-black   ((t (:foreground ,fg-dim))))
   `(term-color-bright-red     ((t (:foreground ,accent))))
   `(term-color-bright-green   ((t (:foreground ,purple))))
   `(term-color-bright-yellow  ((t (:foreground ,special))))
   `(term-color-bright-blue    ((t (:foreground ,bg-raised))))
   `(term-color-bright-magenta ((t (:foreground ,accent-alt))))
   `(term-color-bright-cyan    ((t (:foreground ,fg))))
   `(term-color-bright-white   ((t (:foreground ,fg))))

   ;; --- compilation-mode ---
   `(compilation-error         ((t (:foreground ,fg-dim :background ,accent :weight bold))))
   `(compilation-warning       ((t (:foreground ,fg-dim :background ,special :weight bold))))
   `(compilation-info          ((t (:foreground ,fg-dim :background ,purple))))
   `(compilation-line-number   ((t (:foreground ,fg-dim))))
   `(compilation-column-number ((t (:foreground ,fg-dim))))
   `(compilation-mode-line-exit ((t (:foreground ,fg-dim :background ,special :weight bold))))
   `(compilation-mode-line-fail ((t (:foreground ,fg-dim :background ,accent :weight bold))))
   `(compilation-mode-line-run  ((t (:foreground ,fg-dim :background ,accent-alt :weight bold))))

     ;; --- ansi-color faces (normal) ---
    `(ansi-color-black   ((t (:foreground ,bg))))
    `(ansi-color-red     ((t (:foreground ,accent))))
    `(ansi-color-green   ((t (:foreground ,purple))))
    `(ansi-color-yellow  ((t (:foreground ,special))))
    `(ansi-color-blue    ((t (:foreground ,fg))))
    `(ansi-color-magenta ((t (:foreground ,accent-alt))))
    `(ansi-color-cyan    ((t (:foreground ,fg))))
    `(ansi-color-white   ((t (:foreground ,fg))))

    ;; --- ansi-color faces (bright) ---
    `(ansi-color-bright-black   ((t (:foreground ,fg-dim))))
    `(ansi-color-bright-red     ((t (:foreground ,accent))))
    `(ansi-color-bright-green   ((t (:foreground ,purple))))
    `(ansi-color-bright-yellow  ((t (:foreground ,special))))
    `(ansi-color-bright-blue    ((t (:foreground ,bg-raised))))
    `(ansi-color-bright-magenta ((t (:foreground ,accent-alt))))
    `(ansi-color-bright-cyan    ((t (:foreground ,fg))))
    `(ansi-color-bright-white   ((t (:foreground ,fg))))

   ;; --- cargo / rustic-compilation ---
   `(rustic-compilation-line   ((t (:foreground ,fg-dim))))
   `(rustic-compilation-column ((t (:inherit compilation-column-number))))
   `(rustic-compilation-error  ((t (:foreground ,fg-dim :background ,accent :weight bold))))
   `(rustic-compilation-warning ((t (:foreground ,fg-dim :background ,special :weight bold))))
   `(rustic-compilation-info   ((t (:foreground ,fg-dim :background ,purple))))
   `(rustic-message            ((t (:foreground ,fg))))
   )))

(provide 'fashion-nugget-common)

;;; fashion-nugget-common.el ends here
