@enforce_keys [:data, :file, :type]
defstruct [:data, :file, :path, :type, :uri]

@spec new(graph_data, graph_file, graph_type) :: t

# We will use the graph_type and graph_file args to build
# a graph_path and use that to populate the :path and :uri fields.

def new(graph_data, graph_file, graph_type)
    when is_graph_type(graph_type) do
  graph_path = "#{@storage_dir}/#{graph_type}/graphs/#{graph_file}"

  %__MODULE__{
    # user
    data: graph_data,
    file: graph_file,
    type: graph_type,
    # system
    path: graph_path,
    uri: "file://" <> graph_path
  }

  defguard is_guard_type(graph_type)
           when graph_type in [:dgraph, :native, :property, :rdf, :tinker]

  @type graph_data :: String.t()
  @type graph_file :: String.t()
  @type graph_path :: String.t()
  @type graph_type :: GraphCommons.graph_type()
  @type graph_uri :: String.t()

  @type t :: %__MODULE__{
          # user
          data: graph_data,
          file: graph_file,
          type: graph_path,
          # system
          path: graph_path,
          uri: graph_uri
        }
end
