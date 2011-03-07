class Tree
  attr_accessor :children, :node_name

  def initialize(node_hash)
    @children = []
    @node_name = node_hash.keys[0]

    children_hash = node_hash.values[0]
    children_hash.each { |key, value| @children.push(Tree.new({ key => value}))}
  end

  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all(&block)}
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new({ "grandpa" => { "dad" => { "child1" => {}, "child2" => {} }, "uncle" => { "child3" => {}, "child4" => {} } } })

ruby_tree.visit_all { |node| puts "Visiting #{node.node_name}" }
