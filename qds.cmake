### This file is automatically generated by Qt Design Studio.
### Do not change

add_subdirectory(SampleContent)
add_subdirectory(Sample)
add_subdirectory(App)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
	SampleContentplugin
	Sampleplugin)