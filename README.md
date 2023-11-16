# docker-linux


Docker'ı kullanarak projenizi kendi GitHub deposu üzerinden çalıştırabilirsiniz. Bunun için aşağıdaki adımları takip edebilirsiniz:

İlk olarak, projenizin GitHub'da bir repo oluşturduğunuzdan emin olun.
Dockerfile adlı bir dosya oluşturun. Bu dosya, projenizi Docker imajına dönüştürmek için kullanılacak talimatları içerecek. Dockerfile içinde Ubuntu veya diğer gereksinimlerinizi nasıl kuracağınızı belirtmelisiniz.
Dockerfile'ı projenizin kök dizinine kaydedin.
Docker CLI (Command Line Interface) kullanarak Docker imajını oluşturun. Aşağıdaki komutu kullanabilirsiniz:

`docker build -t <image-name> .`

`<image-name>` yerine imajınıza vermek istediğiniz bir isim belirleyin.
Oluşturduğunuz Docker imajını Docker Hub veya başka bir container registry'ye yükleyebilirsiniz. Bunun için Docker Hub hesabı oluşturabilir veya mevcut bir registry kullanabilirsiniz.

GitHub repo'sunda `Actions` adı verilen bir özelliği kullanarak, Docker imajınızı GitHub deposuna otomatik olarak dağıtabilirsiniz. Bu, her güncelleme veya değişiklik olduğunda Docker imajınızın otomatik olarak oluşturulmasını ve dağıtılmasını sağlar.
Docker imajınızı GitHub repo'sundan çekebilir ve yerel bilgisayarınızda veya başka bir sunucuda çalıştırabilirsiniz.

Bu adımlar, projenizi Docker kullanarak GitHub repo'su üzerinde çalıştırmak için genel bir yaklaşımı temsil etmektedir. Detayları projenizin gereksinimlerine ve yapılandırmasına bağlı olarak özelleştirebilirsiniz.

Bir github repository olusturun ve icerisine bir tane Dockerfile dosyasi olusturun.

Dockerfile oluşturduktan sonra aşağıdaki adımları takip edebilirsiniz:

Dockerfile'ı projenizin kök dizinine kaydedin.
Dockerfile içeriğini düzenleyin ve Ubuntu'nun nasıl yapılandırılacağını belirtin. Örneğin, aşağıdaki gibi bir Dockerfile kullanabilirsiniz:

```
# Base image olarak Ubuntu'nun en son sürümünü kullanın
FROM ubuntu:latest

# Gereksinimlerinizi yükleyin
RUN apt-get update && apt-get install -y <paket1> <paket2> ...

# Projeyi Docker imajına kopyalayın
COPY . /app

# Çalışma dizinini ayarlayın
WORKDIR /app

# Gerekli komutları çalıştırın
CMD ["<komut1>", "<komut2>", ...]
```

Yukarıdaki Dockerfile'ı özelleştirmek için aşağıdaki adımları izleyin:

FROM: Base image olarak Ubuntu'nun en son sürümünü seçtik. Eğer farklı bir Ubuntu sürümü kullanmak isterseniz, ubuntu:<sürüm> şeklinde belirtebilirsiniz (örneğin `ubuntu:18.04`).
RUN: Gereksinimlerinizi yüklemek için apt-get kullanarak paketleri kuruyoruz.` <paket1>`, `<paket2>` gibi paketleri projenizin gereksinimlerine göre değiştirin.
COPY: Projeyi Docker imajına kopyalamak için COPY komutunu kullanıyoruz. . ifadesi ile projenin tüm dosyalarını Docker imajına kopyalayabilirsiniz. Eğer sadece belirli bir dizini veya dosyaları kopyalamak isterseniz, ona göre düzenleyebilirsiniz.
WORKDIR: Çalışma dizinini /app olarak ayarlıyoruz. Bu, projenin Docker imajında hangi dizinde çalışacağını belirtir. /app sizin projenizin kök dizini olabilir veya başka bir dizin de belirleyebilirsiniz.
CMD: Docker imajı başlatıldığında çalıştırılacak komutları belirtmek için CMD komutunu kullanıyoruz. `<komut1>`, `<komut2>` gibi komutları projenizin gereksinimlerine göre değiştirin.

Docker CLI (Command Line Interface) kullanarak Docker imajınızı oluşturun. Bu komutu projenizin kök dizininde çalıştırın:

`docker build -t <image-name> .`

`<image-name> `yerine Docker imajınıza vermek istediğiniz bir isim belirleyin.

Docker imajınız başarıyla oluşturulduktan sonra, aşağıdaki komutu kullanarak Docker imajınızı çalıştırabilirsiniz:

`docker run -it <image-name>`

<image-name> yerine önceki adımda belirlediğiniz Docker imajının ismini kullanın.

Bu adımları takip ederek Dockerfile'ınızı oluşturabilir ve calistirabilirsiniz.
