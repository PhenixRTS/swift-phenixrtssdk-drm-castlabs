# Phenix SDK Castlabs DRM module for iOS

The PhenixSdkDrmCastlabs module provides playback of DRM protected streams. It is provided as an SPM package for integration into a Swift iOS application.

## Setting up access for Xcode

1. Go to the [GitHub personal access tokens (classic) page](https://github.com/settings/tokens) to create a classic GitHub access token. It must have the admin:public_key, repo, user, and write:discussion scopes.
2. In the Xcode IDE go to Xcode -> Settings -> Accounts -> + -> GitHub and use the token created above to log Xcode into your GitHub account.
3. Create a .netrc file in your home directory (if it doesn't already exist) and ensure it contains the following line replacing the placeholders with the same GitHub user and access token:
```
machine api.github.com login <github-username> password <github-token>
```

## Adding the SPM package

To add the SPM package add [this GitHub repository](https://github.com/PhenixRTS/swift-phenixrtssdk-drm-castlabs) by following the [integration instructions](https://developer.apple.com/documentation/xcode/adding-package-dependencies-to-your-app).

Choose an "Exact Version" of the Castlabs DRM module in SPM Dependency Rule. The available versions can be found in the tags list of this repository.

## Documentation

Once you have successfully added the SPM package please check our [documentation](https://phenixrts.com/docs/ios/) for instructions on how to use this module to play back DRM protected content.
