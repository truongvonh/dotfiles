local status_ok, troube = pcall(require, "trouble")

if not status_ok then
	return
end

troube.setup {
	use_diagnostic_signs = true
}
