{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    hugo
    git
  ];

  shellHook = ''
    echo "Hugo development environment loaded!"
    echo "Available commands:"
    echo "  hugo server        - Start development server"
    echo "  hugo server -D     - Start server with drafts"
    echo "  hugo new posts/my-post.md - Create new post"
    echo "  hugo               - Build site"
    echo ""
    echo "Site will be available at http://localhost:1313"
  '';
}