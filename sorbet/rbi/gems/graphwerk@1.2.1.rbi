# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `graphwerk` gem.
# Please instead update this file by running `bin/tapioca gem graphwerk`.

# source://graphwerk//lib/graphwerk/version.rb#4
module Graphwerk
  class << self
    # source://graphwerk//lib/graphwerk.rb#17
    def for_application(**args); end
  end
end

# source://graphwerk//lib/graphwerk/builders/graph.rb#5
module Graphwerk::Builders; end

# source://graphwerk//lib/graphwerk/builders/graph.rb#6
class Graphwerk::Builders::Graph
  # source://graphwerk//lib/graphwerk/builders/graph.rb#47
  sig { params(package_set: Packwerk::PackageSet, options: T::Hash[::Symbol, ::Object], root_path: ::Pathname).void }
  def initialize(package_set, options: T.unsafe(nil), root_path: T.unsafe(nil)); end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#56
  sig { returns(::GraphViz) }
  def build; end

  private

  # source://graphwerk//lib/graphwerk/builders/graph.rb#90
  sig { void }
  def add_package_dependencies_to_graph; end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#98
  sig { void }
  def add_packages_to_graph; end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#66
  sig { returns(::GraphViz) }
  def build_empty_graph; end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#71
  sig { returns(T::Hash[::String, ::GraphViz::Node]) }
  def build_empty_nodes; end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#105
  sig { params(package: ::Graphwerk::Presenters::Package).void }
  def draw_dependencies(package); end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#115
  sig { params(package: ::Graphwerk::Presenters::Package).void }
  def draw_deprecated_references(package); end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#126
  sig { returns(T::Array[::Graphwerk::Presenters::Package]) }
  def packages; end

  # source://graphwerk//lib/graphwerk/builders/graph.rb#81
  sig { void }
  def setup_graph; end
end

# source://graphwerk//lib/graphwerk/builders/graph.rb#20
Graphwerk::Builders::Graph::DEFAULT_OPTIONS = T.let(T.unsafe(nil), Hash)

# source://graphwerk//lib/graphwerk/builders/graph.rb#9
Graphwerk::Builders::Graph::OptionsShape = T.type_alias { {layout: ::Graphwerk::Layout, deprecated_references_color: ::String, application: T::Hash[::Symbol, ::Object], graph: T::Hash[::Symbol, ::Object], node: T::Hash[::Symbol, ::Object], edge: T::Hash[::Symbol, ::Object]} }

# source://graphwerk//lib/graphwerk/constants.rb#5
module Graphwerk::Constants; end

# source://graphwerk//lib/graphwerk/constants.rb#6
Graphwerk::Constants::ROOT_PACKAGE_NAME = T.let(T.unsafe(nil), String)

# source://graphwerk//lib/graphwerk/deprecated_references_loader.rb#5
class Graphwerk::DeprecatedReferencesLoader
  # source://graphwerk//lib/graphwerk/deprecated_references_loader.rb#9
  sig { params(package: ::Packwerk::Package, root_path: ::Pathname).void }
  def initialize(package, root_path); end

  # source://graphwerk//lib/graphwerk/deprecated_references_loader.rb#15
  sig { returns(T::Array[::String]) }
  def load; end

  private

  # source://graphwerk//lib/graphwerk/deprecated_references_loader.rb#26
  sig { returns(::Pathname) }
  def deprecated_references_file; end
end

# source://graphwerk//lib/graphwerk/deprecated_references_loader.rb#23
Graphwerk::DeprecatedReferencesLoader::DEPRECATED_REFERENCES_FILENAME = T.let(T.unsafe(nil), String)

# https://graphviz.org/documentation/#layout-manual-pages
#
# source://graphwerk//lib/graphwerk/layout.rb#6
class Graphwerk::Layout < ::T::Enum
  enums do
    Dot = new
    Neato = new
    Fdp = new
    Sfdp = new
    Twopi = new
    Circo = new
  end
end

# source://graphwerk//lib/graphwerk/presenters/package.rb#5
module Graphwerk::Presenters; end

# source://graphwerk//lib/graphwerk/presenters/package.rb#6
class Graphwerk::Presenters::Package
  # source://graphwerk//lib/graphwerk/presenters/package.rb#10
  sig { params(package: ::Packwerk::Package, root_path: ::Pathname).void }
  def initialize(package, root_path); end

  # source://graphwerk//lib/graphwerk/presenters/package.rb#36
  sig { returns(::String) }
  def color; end

  # source://graphwerk//lib/graphwerk/presenters/package.rb#21
  sig { returns(T::Array[::String]) }
  def dependencies; end

  # source://graphwerk//lib/graphwerk/presenters/package.rb#26
  sig { returns(T::Array[::String]) }
  def deprecated_references; end

  # source://graphwerk//lib/graphwerk/presenters/package.rb#16
  sig { returns(::String) }
  def name; end

  private

  # source://graphwerk//lib/graphwerk/presenters/package.rb#45
  sig { returns(::Graphwerk::Presenters::Package::Name) }
  def package_name; end
end

# source://graphwerk//lib/graphwerk/presenters/package.rb#33
Graphwerk::Presenters::Package::COMPONENT_COLOR = T.let(T.unsafe(nil), String)

# source://graphwerk//lib/graphwerk/presenters/package.rb#50
class Graphwerk::Presenters::Package::Name
  # source://graphwerk//lib/graphwerk/presenters/package.rb#54
  sig { params(package_name: ::String).void }
  def initialize(package_name); end

  # source://graphwerk//lib/graphwerk/presenters/package.rb#59
  sig { returns(::String) }
  def node_name; end

  # source://graphwerk//lib/graphwerk/presenters/package.rb#66
  sig { returns(T::Boolean) }
  def root?; end

  private

  # source://graphwerk//lib/graphwerk/presenters/package.rb#73
  sig { returns(::String) }
  def without_root_package; end
end

# source://graphwerk//lib/graphwerk/presenters/package.rb#32
Graphwerk::Presenters::Package::ROOT_COLOR = T.let(T.unsafe(nil), String)

# source://graphwerk//lib/graphwerk/railtie.rb#5
class Graphwerk::Railtie < ::Rails::Railtie; end

# source://graphwerk//lib/graphwerk/version.rb#5
Graphwerk::VERSION = T.let(T.unsafe(nil), String)