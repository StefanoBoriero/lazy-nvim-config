HOME = os.getenv("HOME")
JAVA_TOOLS_DIR = HOME .. "/.local/share/LazyVim/java"

local bundles = {
  vim.fn.glob(
    JAVA_TOOLS_DIR .. "/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar"
  ),
}

vim.list_extend(bundles, vim.split(vim.fn.glob(JAVA_TOOLS_DIR .. "/vscode-java-test/server/*.jar"), "\n"))

local config = {

  cmd = { JAVA_TOOLS_DIR .. "/jdtls/bin/jdtls" },
  init_options = {
    bundles = bundles,
  },
}
require("jdtls").start_or_attach(config)

config["on_attach"] = function()
  local _, _ = pcall(vim.lsp.codelens.refresh)
  require("jdtls.dap").setup_dap_main_class_configs()
  require("jdtls").setup_dap({ hotcodereplace = "auto" })
end
