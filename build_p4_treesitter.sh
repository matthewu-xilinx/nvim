#!/bin/bash -e

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
TREESITTER_DIR=${SCRIPT_DIR}/treesitter-p4
NVIM_TREESITTER_Q_DIR=~/.local/share/nvim/lazy/nvim-treesitter/queries/p4

if [[ -d ${TREESITTER_DIR} ]]; then
  (cd "${TREESITTER_DIR}" && git pull)
else
  git clone https://github.com/ace-design/tree-sitter-p4.git "${TREESITTER_DIR}"
fi

mkdir -p ~/.local/share/nvim/lazy/nvim-treesitter/queries/
if [[ ! -d ${NVIM_TREESITTER_Q_DIR} ]]; then
  ln -s "${TREESITTER_DIR}/queries" ${NVIM_TREESITTER_Q_DIR}
fi

