local status, git = pcall(require, "git")
if (not status) then return end

git.setup {
  kemaps = {
    blame = "<Leader>gb",
    browse = "<Leader>gp"
  }
}
