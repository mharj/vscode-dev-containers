#$nodeVersions = [System.Collections.ArrayList]@(14,16,18);
$nodeVersions = [System.Collections.ArrayList]@(16,18,20);

$phpVersions = [System.Collections.ArrayList]@("7.1","7.4","8.1");

# initialize
docker pull ubuntu:focal

# build and push base image
docker build -t mharj/vscode-base -f containers/vscode-base/Dockerfile .
docker push mharj/vscode-base

foreach ($nodeVersion in $nodeVersions)
{
    # build and push nodejs image
    $dockerFile = "containers/vscode-apache-nodejs/Dockerfile"
    $imageName = "mharj/vscode-apache-nodejs:$nodeVersion"
    docker build --build-arg NODE_VERSION=$nodeVersion -t $imageName -f $dockerFile .
    if($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
    docker push $imageName

    # build and push all php images from the nodejs image
    foreach ($phpVersion in $phpVersions)
    {
        $dockerFile = "containers/vscode-php/$phpVersion/Dockerfile"
        $imageName = "mharj/vscode-php:node$nodeVersion-php$phpVersion"
        docker build --build-arg NODE_VERSION=$nodeVersion -t $imageName -f $dockerFile .
        if($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
        docker push $imageName
    }
}