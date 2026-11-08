module github.com/<% .OrgName %>/<% .ProjectName %>

go <% .GoVersion %>

require (
	github.com/kamalyes/go-rpc-gateway v1.10.2-0.20261108113725-d288a36ccd0b
	github.com/kamalyes/go-toolbox v0.19.4
	google.golang.org/grpc v1.84.0
	google.golang.org/protobuf v1.36.12
)

// 这个模板刻意只有最小依赖：没有数据库、没有缓存、没有 JWT 库
//
// 它是一个**可替换的桩**。真实的鉴权服务要接策略引擎（Casbin 之类）、
// 用户/角色表、token 签发与吊销，那些依赖由实现方自己加。
// 模板先把「网关能跑通」这条链路打通，并把该在哪里接什么写在注释里。
//
// [EN] Deliberately minimal: no database, no cache, no JWT library. This is a replaceable
// stub. A real authorization service needs a policy engine such as Casbin, user and role
// tables and token issuing and revocation, and the implementer adds those. The template first
// makes the gateway path work end to end and says in comments where each piece belongs.

// 这里故意不写协议中心的 require：由 scripts/init.sh 执行 go get 时自动加上
// [EN] The contract-hub require is deliberately absent and added by scripts/init.sh
