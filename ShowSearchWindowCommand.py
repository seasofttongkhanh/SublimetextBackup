import sublime
import sublime_plugin

class ShowSearchWindowCommand(sublime_plugin.WindowCommand):
    def run(self):
        sublime.active_window().run_command('show_panel', args={'panel': 'output.find_results'})
        a = sublime.active_window().find_output_panel("find_results")
        sublime.active_window().focus_view(a)