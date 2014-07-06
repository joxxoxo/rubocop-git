require 'rubocop/git/version'
require 'rubocop'

if defined?(Rubocop)
  # rubocop 0.22.0
  RuboCop::Formatter = Rubocop::Formatter
  RuboCop::Version   = Rubocop::Version
else
  # rubocop >= 0.23.0
  Rubocop = RuboCop
end

module RuboCop
  module Git
    autoload :CommitFile,        'rubocop/git/commit_file'
    autoload :FileViolation,     'rubocop/git/file_violation'
    autoload :Line,              'rubocop/git/line'
    autoload :Options,           'rubocop/git/options'
    autoload :Patch,             'rubocop/git/patch'
    autoload :PseudoPullRequest, 'rubocop/git/pseudo_pull_request'
    autoload :PseudoResource,    'rubocop/git/pseudo_resource'
    autoload :Runner,            'rubocop/git/runner'
    autoload :StyleChecker,      'rubocop/git/style_checker'
    autoload :StyleGuide,        'rubocop/git/style_guide'
  end
end
