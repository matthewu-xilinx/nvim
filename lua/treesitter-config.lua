local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end
local status_ok, parsers = pcall(require, "nvim-treesitter.parsers")
if not status_ok then
  return
end
local status_ok, install = pcall(require, "nvim-treesitter.install")
if not status_ok then
  return
end

parser_configs = parsers.get_parser_configs()

parser_configs.p4 = {
  install_info = {
    url= vim.fn.stdpath('config') .."tree-sitter-p4",
    files = {"src/parser.c", "src/scanner.c"},
    branch = "main",
    requires_generate_from_grammar = true,
  },
  filetype = "p4"
}

configs.setup({
    ensure_installed = {
      "awk",
      "bash",
      "bibtex",
      "c",
      "cmake",
      "comment",
      "cpp",
      "css",
      "devicetree",
      "diff",
      "dockerfile",
      "fortran",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "go",
      "gomod",
      "gosum",
      "gowork",
      "graphql",
      "groovy",
      "hjson",
      "html",
      "htmldjango",
      "http",
      "ini",
      "java",
      "javascript",
      "jq",
      "jsdoc",
      "json",
      "json5",
      "jsonc",
      "jsonnet",
      "latex",
      "llvm",
      "lua",
      "luadoc",
      "luap",
      "luau",
      "make",
      "markdown",
      "markdown_inline",
      "mermaid",
      "meson",
      "ninja",
      "org",
      "p4",
      "passwd",
      "perl",
      "php",
      "phpdoc",
      "pioasm",
      "proto",
      "puppet",
      "python",
      "query",
      "regex",
      "requirements",
      "robot",
      "rst",
      "ruby",
      "rust",
      "systemtap",
      "terraform",
      "todotxt",
      "toml",
      "verilog",
      "vim",
      "vimdoc",
      "yaml",
    },
    sync_install = true,
    highlight = { enable = true },
    indent = { enable = true },
})

local vim = vim
local opt = vim.opt

opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
install.prefer_git = true

