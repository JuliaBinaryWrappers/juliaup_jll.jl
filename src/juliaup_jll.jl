# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule juliaup_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("juliaup")
JLLWrappers.@generate_main_file("juliaup", UUID("038fdbe3-3777-5af9-9568-3738956aeb97"))
end  # module juliaup_jll
