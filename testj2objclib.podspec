require 'rake'
FileList = Rake::FileList

Pod::Spec.new do |s|

  s.name             = 'testj2objclib'
    s.version          = '0.1.0'
    s.summary          = 'J2objc code framework'

    s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC

    s.homepage         = 'http://j2objc.org/'
    s.license          = { :type => 'Apache 2.0' }
    s.authors           = { 'Filler Person' => 'filler@example.com' }
    s.source           = { :git => 'https://github.com/google/j2objc.git'}

    s.ios.deployment_target = '8.0'

    s.source_files = FileList["build/testj2objclib.h"].include("build/j2objcBuild/dependencies/out/main/**/*.{h,m,cpp,properites,txt}").include("build/j2objcBuild/source/out/main/**/*.{h,m,cpp,properites,txt}").include("build/j2objcBuild/dependencies/out/test/**/*.{h,m,cpp,properites,txt}").include("build/j2objcBuild/source/out/test/**/*.{h,m,cpp,properites,txt}").to_ary

    s.public_header_files = FileList["build/testj2objclib.h"].include("build/j2objcBuild/dependencies/out/main/**/*.h").include("build/j2objcBuild/source/out/main/**/*.h").include("build/j2objcBuild/dependencies/out/test/**/*.h").include("build/j2objcBuild/source/out/test/**/*.h").exclude(/cpphelp/).exclude(/jni/).to_ary

    s.requires_arc = false
    s.libraries = 'z', 'sqlite3', 'iconv', 'jre_emul'
    s.frameworks = 'UIKit'

    s.pod_target_xcconfig = {
     'HEADER_SEARCH_PATHS' => '/Users/buxi/.j2objc/runtime/2.0.6a/include','LIBRARY_SEARCH_PATHS' => '/Users/buxi/.j2objc/runtime/2.0.6a/lib',
     'OTHER_LDFLAGS' => '-ObjC',
'CLANG_WARN_DOCUMENTATION_COMMENTS' => 'NO',
'GCC_WARN_64_TO_32_BIT_CONVERSION' => 'NO'
    }
    
    s.user_target_xcconfig = {
     'HEADER_SEARCH_PATHS' => '/Users/buxi/.j2objc/runtime/2.0.6a/frameworks/JRE.framework/Headers'
    }
    
    
    
end