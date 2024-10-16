#!/bin/bash -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TREESITTER_DIR=${SCRIPT_DIR}/treesitter-p4

if [[ -f ${TREESITTER_DIR} ]]; then
  (cd "${TREESITTER_DIR}" && git pull)
else
  git clone https://github.com/ace-design/tree-sitter-p4.git "${TREESITTER_DIR}"
fi

mkdir -p ~/.local/share/nvim/lazy/nvim-treesitter/queries/
ln -s "${TREESITTER_DIR}/queries" ~/.local/share/nvim/lazy/nvim-treesitter/queries/p4

